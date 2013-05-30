description "Discourse Application"
author "Marco Ceppi <marco@ceppi.net>"

start on (local-filesystems and net-device-up IFACE!=lo)

chdir /home/discourse/discourse

env RAILS_ENV=production
env PORT=3001

exec sudo -u discourse -H RAILS_ENV=production $rails_env foreman start

respawn