Role Name
=========
gwenlei.phpmyadmin

Requirements
------------
ubuntu16.04 xenial

Role Variables
--------------
defaults/main.yml

phpmyadmin_php_fpm_socket: php-fpm
phpmyadmin_server_host: localhost
phpmyadmin_server_auth_type: config
phpmyadmin_server_user: root
phpmyadmin_server_password: root
client_max_body_size: 64M

Dependencies
------------
none

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: gwenlei.phpmyadmin }

License
-------
MIT

Author Information
------------------
onecloud
