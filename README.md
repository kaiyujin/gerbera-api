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

docker-compose up --build -d
docker-compose stop
docker-compose start
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
`docker-compose run --rm api rake db:create db:migrate`  
`docker-compose run api rake db:migrate`  
`docker-compose run api rake db:seed`  
`docker-compose run api rails dbconsole development`

* login
`$ curl -X "POST" "http://localhost/user_token" -H "Content-Type: application/json" -d $'{"auth": {"email": "test@user.com", "password": "test"}}'
`
{"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MTY1MTM0MzQsInN1YiI6MX0.n23PmXaVadVn6G1yNWv8VxC_i8tBBOAiYSdam4DO8w0"}
`$ curl -X "GET" "http://localhost/reservations" -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MTY1MTM0MzQsInN1YiI6MX0.n23PmXaVadVn6G1yNWv8VxC_i8tBBOAiYSdam4DO8w0" -H "Content-Type: application/json"
`
[]