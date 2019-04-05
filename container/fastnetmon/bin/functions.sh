log_file=/fastnetmon/log/notify.log

handle_ban() {
    echo handle ban $1... >> $log_file
    # Your code here, i. e.
    #     sshpass -p password ssh -o StrictHostKeyChecking=no username@host "foo $1 bar"
    ret_code=$?
    echo done >> $log_file
}

handle_unban() {
    echo handle unban $1... >> $log_file
    # Your code here, i. e.
    #     sshpass -p password ssh -o StrictHostKeyChecking=no username@host "baz $1 qux"
    ret_code=$?
    echo done >> $log_file
}

handle_attack_details() {
    echo handle attack_details $1... >> $log_file
    # Your code here, i. e.
    #     echo $details >> quux.log
    ret_code=$?
    echo done >> $log_file
}

handle_unknown_action() {
    echo unknown action $1 >> $log_file
    ret_code=1
}
