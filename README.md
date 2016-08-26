# Ansible Role: phpMyAdmin

An Ansible role that installs phpMyAdmin on Ubuntu.

## Requirements

For phpMyAdmin to work a web server (e.g. nginx), php and MySQL have to be installed.

## Role Variables

Available variables are listed below, along with default values:

    phpmyadmin_php_fpm_socket: php-fpm

    phpmyadmin_server_host: localhost
    phpmyadmin_server_auth_type: config
    phpmyadmin_server_user: root
    phpmyadmin_server_password: root

## Dependencies

None

## Example Playbook

    - hosts: all
      roles:
        - { role: mjanser.phpmyadmin }

## License

MIT
