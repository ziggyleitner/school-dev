class AddTermIdToLesson < ActiveRecord::Migration
  def self.up
add_column :lessons, :term_id, :integer
end
def self.down
remove_column :lessons, :term_id
end
end
