class City < ActiveRecord::Base
has_many :occasions
has_many :events, through: :occasions
end
