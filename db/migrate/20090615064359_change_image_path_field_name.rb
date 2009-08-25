class ChangeImagePathFieldName < ActiveRecord::Migration
  def self.up
rename_column :beats, :image_path, :not_path
end

  def self.down
    rename_column :beats, :not_path, :image_path
  end
end
