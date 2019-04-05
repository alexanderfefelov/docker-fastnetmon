#!/usr/bin/env bash

# This script will get following params:
#     $1 client address
#     $2 attack direction
#     $3 pps
#     $4 action

echo $0 $@

. /fastnetmon/bin/functions.sh

case "$4" in
    ban)
        handle_ban $1
        ;;
    unban)
        handle_unban $1
        ;;
    attack_details)
        handle_attack_details $1
        ;;
    *)
        handle_unknown_action $1
        ;;
esac

exit $ret_code
