set -o errexit

sudo gem install bundler -v 2.2.4
sudo msfdb reinit
sudo msfconsole

bundle install
yarn install
yarn add jquery
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate