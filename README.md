# My Repository for Robot framework tests.  

# Running test with shellscripts:  
Results are located in results folder if tests are run with shellscripts.  

## To run all robot tests with a shellscript:  
./run_all_tests.sh  

## To run single robot test by test name:  
./run_single_test.sh "testname"  
For example ./run_single_test.sh "Test with keywords"  

Name is located in testfile under test cases tag.  

## To run multiple tests in a certain folder:  
./run_single_test.sh ./tests  

# Running test without shellscripts:  

## To run multiple tests in a certain folder:  
robot foldername/  

## To run a single test:  
robot filename  

## Robot framework  
http://robotframework.org/  

## Selenium2Library keywords http://rtomac.github.io/robotframework-selenium2library/doc/Selenium2Library.html#Click%20Button  

## Web driver for firefox  
https://github.com/mozilla/geckodriver/releases  

IF Geckodriver executable needs to be in PATH.  
Use command: export PATH=$PATH:/path/to/gecko_driver_folder/  
