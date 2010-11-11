class Liking < ActiveRecord::Base
  belongs_to :like
  belongs_to :likeable, :polymorphic => true
  belongs_to :user
  validates_uniqueness_of :user_id, :scope => [ :likeable_id, :likeable_type ]
end
