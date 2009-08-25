class AddPositionLesson < ActiveRecord::Migration
  def self.up
    add_column :lessons, :position, :integer
  end

  def self.down
    remove_column :lessons, :position
  end
end
