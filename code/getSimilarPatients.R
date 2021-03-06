##################################
# Function to get similar patients
##################################

getSimilarPatients <- function(numNeighbors=15) {
  if(exists('expData')){
    mySamps <- allCor[1:numNeighbors,"samps"]
    clinDataTmp <- clinDataOrig[clinDataOrig[,"V2"] %in% mySamps,]
    clinDataTmp <- clinDataTmp[,c("Sample.ID", "Cancer.Type", "AGE", "ETHNICITY", "RACE", "TUMOR_SITE")]
  } else {
    clinDataTmp <- data.frame()
  }
  return(clinDataTmp)
}