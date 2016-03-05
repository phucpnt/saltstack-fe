base:
  "*":
    - sshd
    - sysctl
  "vm.*":
    - pg
    - vagrant_user
