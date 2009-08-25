class CreateTerms < ActiveRecord::Migration
  def self.up
    create_table :terms do |t|
      t.string :name
      t.string :header
      t.string :footer
      t.text :content
      t.integer :position
      t.integer :course_id

      t.timestamps
    end
  end

  def self.down
    drop_table :terms
  end
end
