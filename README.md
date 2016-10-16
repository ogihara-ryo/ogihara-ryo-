# ogihara-ryo

[Ogihara Ryo's Web site](http://ogihara-ryo.herokuapp.com)

## Description

ogihara-ryo is my name, The web site of the same name have been developed in Ruby on Rails.  
Since I can't write in English, I have to practice English in this README and commit messages and the like.

## Features

- profile
- blog
- technical tips

## Requirement

- Ruby 2.3.1
- Rails 5.0.0.1

It will follow the latest version

## Installation

```console
$ git clone git@github.com:ogihara-ryo/ogihara-ryo.git
```

## Database creation

```console
$ cp config/database.yml.example config/database.yml
$ bundle install
$ rails db:create
$ rails db:migrate
```

## Run the test suite

```console
$ rspec spec/
```

## Deployment

If you change the master branch, it will be deployed to [ogihara-ryo.herokuapp.com](http://ogihara-ryo.herokuapp.com) automatically by [wercker](http://wercker.com)


## Author

Ogihara Ryo
- [GitHub](https://github.com/ogihara-ryo)
- [Twitter (@OgiharaRyo)](https://twitter.com/OgiharaRyo)
- [Facebook](https://www.facebook.com/ryo.ogihara.5)

## License

[MIT License](https://github.com/ogihara-ryo/ogihara-ryo/blob/develop/LICENSE)
