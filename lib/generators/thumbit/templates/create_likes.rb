class CreateLikes < ActiveRecord::Migration
  def self.up
    create_table :likes do |t|
      t.integer :likes, :default => 0
      t.timestamps
    end
  end
  
  def self.down
    drop_table :likes
  end
end
