# gerbera-api

# required
- RoR
- MySQL
- Redis

# setup history
```
brew install rbenv
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' > ~/.bash_profile
source ~/.bash_profile
rbenv global 2.5.0
rbenv exec gem install bundler
xcode-select --install
rails new gerbera -d mysql --api
docker-machine create gerbera
docker-machine regenerate-certs gerbera
docker-machine start gerbera
eval "$(docker-machine env default)"

openssl genrsa 2048 > ./config/jwt-private.pem
openssl rsa -in config/jwt-private.pem -pubout -out config/jwt-public.pem
```

# run
`rails s`

Things you may want to cover:

* Ruby version  
2.5.0  

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* rails new   
`bundle exec rails g scaffold reservations`
* migrate  
`rails db:migrate`
`docker-compose run --rm rails rake db:create`

