class Event < ActiveRecord::Base
has_many :occasions
has_many :citys, through: :occasions
end