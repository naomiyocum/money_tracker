# Money Tracker

## Table of Contents
* [General Info](#general-info)
* [Learning Goals](#learning-goals)
* [Technologies](#technologies)
* [Schema Design](#schema-design)
* [Usage](#usage)

## General Info
Project for Ruby Conf 2023

## Learning Goals
- Understand Hotwire - Turbo and Stimulus
- Organize and refactor code to be more maintainable
- Authentication implementation

## Technologies

- Ruby 3.1.1
- Rails 7.0.8

## Schema Design
![ruby-conf](https://github.com/naomiyocum/money_tracker/assets/102825498/249854e3-5e47-4675-8cfc-380e8b9a2edd)


## Usage

Clone the repo by running `git clone` with the copied URL onto your local machine

Then, run the following commands:
```
cd money_tracker
bundle install
rails db:{drop,create,migrate,seed}
```

Then open up your server by running `rails s`. 

Lastly, head to your web browser and type `localhost:3000` and click enter.
