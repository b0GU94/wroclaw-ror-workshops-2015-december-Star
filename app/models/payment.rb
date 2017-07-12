class Payment < ActiveRecord::Base
	belongs_to :student
	validates :month, :inclusion => 1..12
	validates :year,  :inclusion => 1900..Date.today.year+100

end
