class Beat < ActiveRecord::Base


def notation_path 
@not_path  
end


belongs_to :lesson
end
