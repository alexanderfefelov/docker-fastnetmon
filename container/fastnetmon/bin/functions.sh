LOG=/fastnetmon/log/notify.log

handle_ban() {
  echo handle ban $1... >> $LOG
  # Your code here, i. e.
  #     sshpass -p password ssh -o StrictHostKeyChecking=no username@host "foo $1 bar"
  ret_code=$?
  echo done >> $LOG
}

handle_unban() {
  echo handle unban $1... >> $LOG
  # Your code here, i. e.
  #     sshpass -p password ssh -o StrictHostKeyChecking=no username@host "baz $1 qux"
  ret_code=$?
  echo done >> $LOG
}

handle_attack_details() {
  echo handle attack_details $1... >> $LOG
  # Your code here, i. e.
  #     echo $details >> quux.log
  ret_code=$?
  echo done >> $LOG
}

handle_unknown_action() {
  echo unknown action $1 >> $LOG
  ret_code=1
}
