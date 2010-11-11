class ThumbitGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  source_root File.expand_path('../templates', __FILE__)
  
  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def create_model_file
    template "like.rb", "app/models/like.rb"
    template "liking.rb", "app/models/liking.rb"
    migration_template "create_likes_and_likings.rb", "db/migrate/create_likes_and_likings.rb"
  end
end
