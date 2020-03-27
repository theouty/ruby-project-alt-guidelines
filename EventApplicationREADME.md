Module One Final Project

Event Application: By Aman Michael

I created the Event Application to compile and list all the events taking place. I have 4 models. The first model is the user, which have the attributes of name and city saved. The other three models are Occasions, Events, and Cities. In the City database it contains information such as the city name, the vibe of the city, and the average temperature. Events contains event name, date, average age for attendees, event type such as concert, festival, etc. Lastly, Occasions serves as a join between city and event. 


User Stories
•	As a user, I can create an event. (Create)
•	As a user, I can read all the events listed. (Read)
•	As a user, I can update an event and edit its date, average age of attendees, event type, as well as the event itself. (Update)
•	As a user, I can delete an event I created as well as an existing event. (Delete)

To start we begin by entering our name and city in the prompt below. Immediately after, we are prompted if we want to create an event. If we select yes we can then specify the name, type, date (mmddyyyy), and age of the event. After creating the event, we can then view all of the events. After viewing all of the events, we can select an event we want to edit. This is done by identifying its name. After identification, we can then change the name, date, event type, and average age. Lastly, we can delete an event of our choosing after choosing the name.

*Screenshots and Video in another file

Requirements to run application
bundle install

GemFile
# frozen_string_literal: true
source "https://rubygems.org"

gem "activerecord", '~> 5.2'
gem "sinatra-activerecord"
gem "sqlite3", '~> 1.3.6'

gem "pry"
gem "require_all"
gem "faker"


RakeFile
require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end



