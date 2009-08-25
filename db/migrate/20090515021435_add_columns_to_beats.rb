class AddColumnsToBeats < ActiveRecord::Migration
  def self.up
    add_column :beats, :intro_text, :text
    add_column :beats, :header, :text
    add_column :beats, :footer, :text
    add_column :beats, :intro_audio_path, :string
    add_column :beats, :intro_video_path, :string
    rename_column :beats, :content, :content_text
    add_column :beats, :content_video_path, :string
    add_column :beats, :content_audio_path, :string
    add_column :beats, :description, :text
    add_column :beats, :pretty_name, :string

  end

  def self.down
    remove_column :beats, :intro_text
    remove_column :beats, :header
    remove_column :beats, :footer
    remove_column :beats, :intro_audio_path
    remove_column :beats, :intro_video_path
    remove_column :beats, :content_video_path
    remove_column :beats, :content_audio_path
    remove_column :beats, :description
    remove_column :beats, :pretty_name
  end
end
