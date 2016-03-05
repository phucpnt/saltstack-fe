base:
  "*":
    - sshd
    - vim
  "vm.fe":
    - nginx
    - postgresql
    - php_fpm
    - nodejs
    - sites.vagrant
  # "yoursitehere.com":
  #   - nginx
  #   - postgresql
  #   - php_fpm
  #   - sites.yoursitehere
