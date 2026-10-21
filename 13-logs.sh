#!/bin/bash
user_id=$(id -u)
log_folder="/var/log/shell-practice-new"
log_file="${log_folder}/${0}.log"

    if [ $user_id -ne 0 ]; then
        echo "Please run this script with sudo access.."
        exit 1
    fi
mkdir -p $log_folder 
echo "script started execution at $(date +"%F %T")"

validate(){
    if [ $1 -ne 0 ]; then
        echo "$2.. failed" | tee -a $log_file
        exit 1
    else
        echo "$2 is installed" | tee -a $log_file
    fi
}

echo "Proceeding"
dnf install nginx -y  &>> $log_file
validate $? "Nginx installation"
dnf install mysql -y &>> $log_file
validate $? "Mysql installation"
echo "still processed..."

echo "script execution ended at $(date +"%F %T")"
