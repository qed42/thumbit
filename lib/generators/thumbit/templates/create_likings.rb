class CreateLikings < ActiveRecord::Migration
  def self.up
    create_table :likings do |t|
      t.belongs_to :users
      t.belongs_to :likes
      t.belongs_to :likeable, :polymorphic => true
      
      t.timestamps
    end
  end
  
  def self.down
    drop_table :likings
  end
end
