class Payment < ActiveRecord::Base
	belongs_to :student
	validates :month, :inclusion => 1..12
	validates_length_of :year,  :is => 4

end
