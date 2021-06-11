log_file = open("um-server-01.txt")
# connects python code to server


def sales_reports(log_file):
#setting up a function called sales_report with parameter log_file
    for line in log_file:
        #setting up a loop that loops over variables in log_file
        line = line.rstrip()
        #removing whitespace from strings in line
        day = line[0:3]
        #defining day as index 0 and 3 from line
        if day == "Tue":
            print(line)
        #printing line loop if index 0 and 3 = 'Tue'


sales_reports(log_file)
#calling function


### SALES FOR MONDAY ###

def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)


sales_reports(log_file)