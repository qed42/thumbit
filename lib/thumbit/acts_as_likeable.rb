
module ActsAsLikeable
  def self.included base
    base.send :extend, ClassMethods
  end
  
  module ClassMethods
    def acts_as_likeable options = {}
      has_many :likings, :as => :likeable, :dependant => :destroy
      has_many :likes, :through => :likings
      send :extend, SingletonMethods
      send :include, InstanceMethods
    end
  end
  
  module SingletonMethods
    def find_likes_for obj
      likeable = self.base_class.name
      Like.find_likes_for_likeable(likeable, obj.id)
    end
    
    def find_likes_by user
      likeable = self.base_class.name
      Like.where(["user_id = ? and likeable_type = ?", user.id, likeable])
    end
  end
  
  module InstanceMethods
    def like_it user_obj
      like = Like.new
      like.likes = 1
      l = like.save
      likeable = Liking.new
      likeable.user_id = user_obj.id
      likeable.likeable_id = self.id
      likeable.likeable_type = self.class
      likeable.like_id = l.id
      likeable.save
    end
    
    def likes_count
      self.likes.size
    end
    
  end
end

ActiveRecord::Base.send :include, ActsAsLikeable
