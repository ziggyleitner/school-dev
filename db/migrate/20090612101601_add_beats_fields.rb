class AddBeatsFields < ActiveRecord::Migration
  def self.up
    
    add_column :beats, :not_img_width, :integer
    add_column :beats, :not_img_height, :integer
    add_column :beats, :image_path, :string
    add_column :beats, :midi_path, :string
    add_column :beats,  :hints, :text
    add_column :beats,  :pdf_path, :string
    add_column :beats,  :time_sign, :string
    
    
  end

  def self.down
    remove_column:beats, :not_img_width, :integer
    remove_column:beats, :not_img_height, :integer
    remove_column:beats, :image_path, :string
    remove_column:beats, :midi_path, :string
    remove_column:beats,  :hints, :text
    remove_column:beats,  :pdf_path, :string
    remove_column:beats,  :time_sign, :string
  end
end
