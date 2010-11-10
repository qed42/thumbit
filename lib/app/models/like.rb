class Like < ActiveRecord::Base
  has_many :likings
  validates_presence_of :likes
end
