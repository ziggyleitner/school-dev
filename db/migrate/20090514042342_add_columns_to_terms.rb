class AddColumnsToTerms < ActiveRecord::Migration
  def self.up
    add_column :terms, :intro_text, :text
    add_column :terms, :intro_audio_path, :string
    add_column :terms, :intro_video_path, :string
    rename_column :terms, :content, :content_text
    add_column :terms, :content_video_path, :string
    add_column :terms, :content_audio_path, :string
    add_column :terms, :description, :text
    add_column :terms, :pretty_name, :string

  end

  def self.down
    remove_column :terms, :intro_text
    remove_column :terms, :intro_audio_path
    remove_column :terms, :intro_video_path
    remove_column :terms, :content_video_path
    remove_column :terms, :content_audio_path
    remove_column :terms, :description
    remove_column :terms, :pretty_name
  end
end
