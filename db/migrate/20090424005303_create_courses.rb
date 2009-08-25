class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
      t.string :header
      t.string :footer
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
