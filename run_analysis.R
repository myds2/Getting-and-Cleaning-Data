
## Read in the data and merge the train and test datasets
dat1 <- read.table("UCI HAR Dataset/train/X_train.txt", header=F)
dat2 <- read.table("UCI HAR Dataset/test/X_test.txt", header=F)
datX <- rbind(dat1,dat2)
dat3 <- read.table("UCI HAR Dataset/train/y_train.txt", header=F)
dat4 <- read.table("UCI HAR Dataset/test/y_test.txt", header=F)
daty <- rbind(dat3,dat4)
names(daty) <- c("activity")
dat5 <- read.table("UCI HAR Dataset/train/subject_train.txt", header=F)
dat6 <- read.table("UCI HAR Dataset/test/subject_test.txt", header=F)
datS <- rbind(dat5,dat6)
names(datS) <- c("subject")


## Read in the variable names and rename them to be understandable by R
features <- read.table("UCI HAR Dataset/features.txt", header=F)
features_vector <- as.character(features$V2)
features1_vector <- gsub("-",".",features_vector)
features2_vector <- gsub("()","",features1_vector,fixed=TRUE)
make.unique(features2_vector, sep = ".")
colnames(datX) <- features2_vector
## Extract the columns that contain mean or std
datMS <- datX[,grep("mean|std", features2_vector)] 

## Create the dataset including subject, activity, and features
dat_full <- cbind(datS, daty, datMS)

## Translate the activities from numbers to words
dat_full$activity[dat_full$activity == 1] <- "walking"
dat_full$activity[dat_full$activity == 2] <- "walking upstairs"
dat_full$activity[dat_full$activity == 3] <- "walking downstairs"
dat_full$activity[dat_full$activity == 4] <- "sitting"
dat_full$activity[dat_full$activity == 5] <- "standing"
dat_full$activity[dat_full$activity == 6] <- "laying"

#calculate the average of each variable by subject and activity
dat_table <- tbl_df(dat_full)
by_act <- dat_table %>% group_by(subject, activity)
dat_tidy <- by_act %>% summarise_each(funs(mean))
