class Lesson < ActiveRecord::Base
belongs_to :term
has_many :beats
end
