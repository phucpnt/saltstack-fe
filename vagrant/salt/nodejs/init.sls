nodejs:
  cmd.run:
    - name: curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - && sudo apt-get install -y nodejs
    {% if grains['os_family'] == 'Debian' %}
    - unless: dbkg -s nodejs
    {% endif %}

node-npm:
  cmd.run:
    - name: npm update npm -g
    - unless: npm --version | grep "^3." # check if npm version is 3

npm-build-ess:
  pkg.installed:
    - name: build-essential
