log_details() {
    cat
}

drop_details() {
    while read line
    do
        echo $line > /dev/null
    done < /dev/stdin
}

handle_ban() {
    echo -n handle ban $1...
    drop_details
    # Your code here, i. e.
    #     sshpass -p password ssh -o StrictHostKeyChecking=no username@host "foo $1 bar"
    echo done
}

handle_unban() {
    echo -n handle unban $1...
    # Your code here, i. e.
    #     sshpass -p password ssh -o StrictHostKeyChecking=no username@host "baz $1 qux"
    echo done
}

handle_attack_details() {
    echo -n handle attack_details $1...
    # Your code here, i. e.
    #     cat >> quux.log
    echo done
}
