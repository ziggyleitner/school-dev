class CreateBeats < ActiveRecord::Migration
  def self.up
    create_table :beats do |t|
      t.string :name
      t.text :content
      t.integer :position
      t.integer :lesson_id

      t.timestamps
    end
  end

  def self.down
    drop_table :beats
  end
end
