#!/bin/bash

ansible-playbook playbook.yml --syntax-check || exit 1

ansible-playbook playbook.yml --connection=local || exit 1

sleep 2
curl -s http://localhost/phpmyadmin/ | grep -q phpMyAdmin && echo "phpMyAdmin works" || { echo "phpMyAdmin does not work" && exit 1; }
curl -s http://localhost | grep  -q 'Welcome to nginx' && echo "nginx works" || { echo "nginx does not work" && exit 1; }

ansible-playbook playbook.yml --connection=local | tee /tmp/idempotence.log
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" /tmp/idempotence.log | grep -q "changed=0.*failed=0" \
    && (echo "Idempotence test: pass" && exit 0) \
    || (echo "Idempotence test: fail" && exit 1)
