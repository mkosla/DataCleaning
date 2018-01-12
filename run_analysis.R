#load necessary packages
library(dplyr)
library(data.table)


#get variable names for testx from the features file

features <- read.table(".\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\features.txt")
	colnames(features)[1] <- "varnum"
	colnames(features)[2] <- "varname"

#clean varname values
	#1. Remove non-alphanumeric characters
	#2. variables names as lowercase
	#3. Add descriptions for the t and f prefixes (time and freq)

	features$varname <- tolower(gsub("[^[:alnum:]=\\.]","",gsub("^[Ff]", "frequency", gsub("^[Tt]", "time", features$varname))))


#get activity labels

actlabel <- read.table(".\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\activity_labels.txt")
	colnames(actlabel)[1] <- "activityid"
	colnames(actlabel)[2] <- "activity"




#Load in TEST data


#subject ID data
testsub <- read.table("N:/training/Data Cleaning\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt")
	colnames(testsub)[1] <- "subjectid"

#activity ID data
testy <- read.table("N:/training/Data Cleaning\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Y_test.txt")
	colnames(testy)[1] <- "activityid"

testyrow <- rownames(testy)
testy$row <- testyrow

#add the activity to the activityid data. Using JOIN instead of merge in order to keep original order
testy = merge(testy, actlabel, by.x="activityid", by.y="activityid")

#drop the activityid var, no longer needed
testy$activityid = NULL






#measure data

testx <- read.table("N:/training/Data Cleaning\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt")

#rename the variables in testx
setnames(testx, names(testx), as.character(features$varname))

#Need to limit measures to only mean() and std()
	#find relevant measures in features data

	#this will NOT return the meanFreq, but forums said we can return them
	#keep <- grep("(mean\\(\\))|(std\\(\\))", features$varname)

	#don't need to worry about upcase, because I fixed that above
	keep <- grep("mean|std", features$varname)

#limit measures to those found in keep

testx <- testx[,keep]

#Merge test datasets together. To do this, need to merge by rownum. Add rownum to each data frame


testsubrow <- rownames(testsub)
testsub$row = testsubrow

testxrow <- rownames(testx)
testx$row = testxrow

#already have row in testy
#testyrow <- rownames(testy)
#testy$row <- testyrow

#merge the subject and activity IDs together

merge_temp = merge(testsub, testy, by.x="row", by.y="row")


TESTmergedData = merge(merge_temp, testx, by.x = "row", by.y="row")






#Load in train data


#subject ID data
trainsub <- read.table("N:/training/Data Cleaning\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt")
	colnames(trainsub)[1] <- "subjectid"

#activity ID data
trainy <- read.table("N:/training/Data Cleaning\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Y_train.txt")
	colnames(trainy)[1] <- "activityid"

trainyrow <- rownames(trainy)
trainy$row <- trainyrow

#add the activity to the activityid data. 
trainy = merge(trainy, actlabel, by.x="activityid", by.y="activityid")



#drop the activityid var, no longer needed
trainy$activityid = NULL


#measure data

trainx <- read.table("N:/training/Data Cleaning\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt")

#rename the variables in trainx
setnames(trainx, names(trainx), as.character(features$varname))

#Need to limit measures to only mean() and std()
	#find relevant measures in features data

	#keep <- grep("(mean\\(\\))|(std\\(\\))", features$varname)
	keep <- grep("mean|std", features$varname)

	

#limit measures to those found in keep

trainx <- trainx[,keep]

#Merge train datasets together. To do this, need to merge by rownum. Add rownum to each data frame


trainsubrow <- rownames(trainsub)
trainsub$row = trainsubrow

trainxrow <- rownames(trainx)
trainx$row = trainxrow

#trainyrow <- rownames(trainy)
#trainy$row <- trainyrow

#merge the subject and activity IDs together

merge_temp = merge(trainsub, trainy, by.x="row", by.y="row")


TRAINmergedData = merge(merge_temp, trainx, by.x = "row", by.y="row")



alldata <- subset(rbind(TESTmergedData, TRAINmergedData), select = -row)

#export data
write.table(alldata, file = ".\\centraltendancyanddispersiondetailed.csv")

alldata2 <- aggregate(alldata[,3:88], list(alldata$subjectid, alldata$activity), mean)

#subjectid and activity were renamed to Group.1 and Group.2, fix this below
setnames(alldata2, c("Group.1", "Group.2"), c("subjectid", "activity"))

write.table(alldata2, file = ".\\centraltendancyanddispersionsummary.csv")





