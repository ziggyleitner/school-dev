class AddColumnsToLessons < ActiveRecord::Migration
  def self.up
    add_column :lessons, :intro_text, :text
    add_column :lessons, :intro_audio_path, :string
    add_column :lessons, :intro_video_path, :string
    rename_column :lessons, :content, :content_text
    add_column :lessons, :content_video_path, :string
    add_column :lessons, :content_audio_path, :string
    add_column :lessons, :description, :text
    add_column :lessons, :pretty_name, :string

  end

  def self.down
    remove_column :lessons, :intro_text
    remove_column :lessons, :intro_audio_path
    remove_column :lessons, :intro_video_path
    remove_column :lessons, :content_video_path
    remove_column :lessons, :content_audio_path
    remove_column :lessons, :description
    remove_column :lessons, :pretty_name
  end
end
