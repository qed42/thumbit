require 'rails/generators'
require 'rails/generators/migration'

class ThumbitGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  
  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def create_model_file
    template "like.rb", "app/models/like.rb"
    template "liking.rb", "app/models/liking.rb"
    template "create_likes.rb", "db/migrate/create_likes.rb"
    template "create_likings.rb", "db/migrate/create_likings.rb"
  end
  
end
