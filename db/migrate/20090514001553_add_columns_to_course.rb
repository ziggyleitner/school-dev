class AddColumnsToCourse < ActiveRecord::Migration
  def self.up
    add_column :courses, :intro_text, :text
    add_column :courses, :intro_audio_path, :string
    add_column :courses, :intro_video_path, :string
    rename_column :courses, :content, :content_text
    add_column :courses, :content_video_path, :string
    add_column :courses, :content_audio_path, :string
    add_column :courses, :description, :text
    add_column :courses, :pretty_name, :string


  end

  def self.down
    remove_column :courses, :intro_text
    remove_column :courses, :intro_audio_path
    remove_column :courses, :intro_video_path
    remove_column :courses, :content_video_path
    remove_column :courses, :content_audio_path
    remove_column :courses, :description
    remove_column :courses, :pretty_name

  end
end
