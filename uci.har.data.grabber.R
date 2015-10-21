##start of uci.har.data.grabber script

list.of.packages <- c("dplyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
        
library(dplyr)
        
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
 y_test <- read.table("UCI HAR Dataset/test/y_test.txt")  
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")  
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
orig_column_names <- read.table("UCI HAR Dataset/features.txt")
        
test_data <- cbind(s_t=subject_test$V1,y_t=y_test$V1,x_test)
train_data <- cbind(s_t=subject_train$V1,y_t=y_train$V1,x_train)
mostly_raw_har_data <- rbind(test_data,train_data)
        
improved_column_names <- make.names(gsub("std\\(\\)","Sigmarelevant",gsub("mean\\(\\)","Meanrelevant",orig_column_names$V2)),unique=TRUE)
        
colnames(mostly_raw_har_data) <- c("subjectrelevant","activity_code",improved_column_names)
        
 descriptive_activity_names <- function(nc) {
        ifelse(nc==1,"WALKING",
        ifelse(nc==2,"WALKING_UPSTAIRS",
        ifelse(nc==3,"WALKING_DOWNSTAIRS",
        ifelse(nc==4,"SITTING",
        ifelse(nc==5,"STANDING",
        ifelse(nc==6,"LAYING","?"
        ))))))
}
mostly_raw_har_data <- cbind(activityrelevant=descriptive_activity_names(mostly_raw_har_data$activity_code),mostly_raw_har_data)
        
har_data <- select(mostly_raw_har_data,contains("relevant"))
har_data <- har_data[,c(2,1,3:length(names(har_data)))]

descriptive.names.samsung <- function(old.names) {
        gsub("^t","time",
        gsub("^f","frequency",
        gsub("Gravity","Grav",
        gsub("[Bb]ody[Bb]ody","Body",
        gsub("[Aa]cc","Accmeter",
        gsub("[Gg]yro","Gyroscope",
        gsub("[Mm]ag","Magnitude",
        gsub("X$","Xdimen",
        gsub("Y$","Ydimen",
        gsub("Z$","Zdimen",
        gsub("\\.","",
        gsub("relevant","",old.names
        ))))))))))))
}
colnames(har_data) <- descriptive.names.samsung(colnames(har_data))

write.table(har_data,"har_data.txt")

har_summary <- har_data %>% group_by(subject,activity) %>% summarise_each(funs(mean))
colnames(har_summary) <- c(colnames(har_summary)[1:2],gsub("^","mean.of.",colnames(har_summary))[3:length(colnames(har_summary))])

write.table(har_summary,"har_summary.txt")

##end of uci.har.data.grabber script 