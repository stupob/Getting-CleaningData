################################################################################
## Downloading the data files, unzipping them
## Creating a tidy dataset which merges the training and test sets' mean and
## standard deviations.
################################################################################

setwd("N:/A-OB/Courses/DataCleaning-JL-JohnsHopkins/PR/")

################################################################################
## Functions
################################################################################

## Load the activity labels and description for easy conversion to factors
get_factor_info <- function(loc='UCI HAR Dataset/activity_labels.txt') {
    df <- read.table(loc, stringsAsFactors=FALSE)
    lvls <- df[,1]
    lbls <- df[,2]
    list(levels=lvls, labels=lbls)
}

## Make the names in the features.txt file easier to read
clean.names <- function(names) {
    # Remove parentheses
    clean <- gsub('*[()]', '', names)
    
    # Expand prefixes
    clean <- gsub('^t', 'time.', clean)
    clean <- gsub('^f', 'freq.', clean)
    
    # Expand abbreviated words
    clean <- gsub('Acc', 'Acceleration', clean)
    clean <- gsub('Mag', 'Magnitude', clean)
    
    clean
}

## Load the mean and standard deviation of the measurements in the given directory.
## Input : 'test' or 'train'.
## Return data with the appropriate statistics.
load_data <- function(set='test') {
    # Load the recorded statistics
    stats <- read.table(paste0('UCI HAR Dataset/', set, '/X_', set, '.txt'))
    
    # Get the names of the columns using the data in features.txt
    features <- read.table('UCI HAR Dataset/features.txt', stringsAsFactors=FALSE)
    names <- features[,2]
    better.names <- clean.names(names)
     
    # Find the columns for means and standard deviations
    chosen <- grepl('mean|std', names) & !grepl('meanFreq', names)
    
    # Get rid of the unnecessary columns and set the names
    stats <- stats[,chosen]
    colnames(stats) <- better.names[chosen]
    
    # Get the subject and test IDs
    subjects <- read.table(paste0('UCI HAR Dataset/', set, '/subject_', set, 
                                  '.txt'))
    tests <- read.table(paste0('UCI HAR Dataset/', set, '/y_', set, '.txt'))
    
    # Convert tests to factors
    f <- get_factor_info()
    tests <- factor(tests[,1], levels=f$levels, labels=f$labels)
    
    # Convert subjects to factors
    subjects <- factor(subjects[,1], levels=1:30)
    
    # Merge the data frames
    stats <- cbind(subjects, tests, stats)
    colnames(stats)[1:2] <- c('Subject', 'Test')
    
    # Add column to mark these as the appropriate set - test or train
    stats$Set <- rep(set, dim(stats)[1])
    
    # Return the tidied data frame
    stats
}

################################################################################
## The script
################################################################################

# Download and extract the data, if it hasn't been already done.
if(!file.exists('UCI HAR Dataset')){
    url <- paste0('https://d396qusza40orc.cloudfront.net/',
                  'getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip')
    download.file(url, destfile = 'dataset.zip', method='curl')
    unzip('dataset.zip')
}

# Tidy the data, if it hasn't been already done.
if(!file.exists('tidy.txt')){
    
    # Load the data sets
    test <- load_data('test')
    train <- load_data('train')
    
    # Merge the sets together
    merged <- rbind(test, train)
    
    # Write the merged data set to a text file
    write.table(merged, file='tidy.txt')
}
