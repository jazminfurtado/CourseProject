#This R file creates and cleans a data table, extracting measurements of mean and sd for 30 patients

#The files are merged together, first by columns, then by rows
###THESE FILES ARE TAKEN FROM THE CURRENT WORKING DIRECTORY WHICH SHOULD END WITH 
  ###   "/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"
x_test<-read.table(paste(getwd(),"/test/X_test.txt",sep="")) 
y_test<-read.table(paste(getwd(),"/test/y_test.txt",sep=""))
mergedTest<-cbind(y_test,x_test)

x_train<-read.table(paste(getwd(),"/train/X_train.txt",sep=""))
y_train<-read.table(paste(getwd(),"/train/y_train.txt",sep=""))
mergedTrain<-cbind(y_train,x_train)
TrainAndTest<-rbind(mergedTest,mergedTrain)

#The column names are originally separate before being extracted and integrated into the table
features<-read.table(paste(getwd(),"/features.txt",sep=""))
featureNames<-features$V2
#replace column names with the feature names
as.character(names(TrainAndTest))
names(TrainAndTest)[2:562]<-as.character(featureNames)

#extract mean() and std()
meansAndStd<-TrainAndTest[,grepl("mean\\(\\)|std\\(\\)", names(TrainAndTest), ignore.case = FALSE, perl = FALSE,
                    fixed = FALSE, useBytes = FALSE)]
#insert column with IDs
ID<-read.table(paste(getwd(),"/train/subject_train.txt",sep=""))
ID2<-read.table(paste(getwd(),"/test/subject_test.txt",sep=""))
ID<-rbind(ID,ID2)
tidy<-cbind(ID,TrainAndTest[,1],meansAndStd)
names(tidy)[1:2]<-c("ID","Activity")

#descriptive activity names to name the activities in the data set
tidy[,2]<-sub(1,"walking",tidy[,2])
tidy[,2]<-sub(2,"walking upstairs",tidy[,2])
tidy[,2]<-sub(3,"walking downstairs",tidy[,2])
tidy[,2]<-sub(4,"sitting",tidy[,2])
tidy[,2]<-sub(5,"standing",tidy[,2])
tidy[,2]<-sub(6,"laying",tidy[,2])


