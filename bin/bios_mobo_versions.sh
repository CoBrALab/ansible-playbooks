ansible -v -b -m shell -a 'echo $(hostname),$(lshw -json | jq ".children[0].product"),$(lshw -json | jq ".children[0].children[0].version"),$(lshw -json | jq ".children[0].serial")' all | grep -E -o '(cic|dnp)(ws|cs)[0-9]+,.*' | sort
