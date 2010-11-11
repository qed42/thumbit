class CreateLikesAndLikings < ActiveRecord::Migration
  def self.up
    create_table :likings do |t|
      t.belongs_to :user
      t.belongs_to :like
      t.belongs_to :likeable, :polymorphic => true
      t.timestamps
    end
    create_table :likes do |t|
      t.integer :likes, :default => 0
      t.timestamps
    end
  end
  
  def self.down
    drop_table :likings
    drop_table :likes
  end
end
