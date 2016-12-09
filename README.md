# BashToRuby
Recreate HW2 in Ruby

Create a bash script that accomplish the following items:
1. Make sure you have the correct structure for your data. The correct structure should be as
      follows:
    a. Customer should be store in ~/fredData/MM
    b. The fredData folder should be divided by months (01, 02, .. 12)
    c. Your script should verify if the folder structure exists. If it is not available, then your
      script should be able to create it.
2. Connects to the customer server and retrieves the following file using scp:
      /home/hvalle/submit/cs3030/files/FRED.csv
    a. After retrieving the file, you should place the data file in the corresponding data
      folder. For example, if you are retrieving a file during the month of September, the
      file should be place in the ~/fredData/09 folder.
    b. In order to avoid overwriting of your previous data files, the file should be rename to
      FRED.csv.YYYY-MM-DD all based on the current timestamp
3. In order to make your script more robust, your customer credentials as well as the file,
      should be taken as options to your program using getopts.
4. Your script to do all of this automatically, that is, you need to setup your ssh keys in the
      customer’s server to avoid the password exchange.
5. Finally, you need to use git to locally or remotely source control your script.
    a. You need to redirect the output from a $ git log > file.log
    b. Your log file must follow the same naming convention required for the assignment
      firstname_lastname_hw9.rb
