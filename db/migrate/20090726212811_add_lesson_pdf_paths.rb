class AddLessonPdfPaths < ActiveRecord::Migration
  def self.up
  
    add_column :lessons, :lesson_pdf_One_path, :string
    add_column :lessons, :lesson_pdf_Two_path, :string
    
  end

  def self.down
  
    remove_column :lessons, :lesson_pdf_One_path, :string
    remove_column :lessons, :lesson_pdf_Two_path, :string
    
  end
end
