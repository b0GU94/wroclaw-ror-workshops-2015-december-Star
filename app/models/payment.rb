class Payment < ActiveRecord::Base
	belongs_to :student
	validates :month, :inclusion => 1..12
end
