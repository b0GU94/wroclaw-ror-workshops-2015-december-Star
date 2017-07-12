class PaymentDecorator < Draper::Decorator
  delegate_all

	def month_name
		month_names = {1 => "January" , 2=> "February", 3=> "March", 4=> "April", 5=> "May", 6=> "June", 7=> "July", 8=> "August", 9=> "September", 10=> "October", 11=> "November", 12=> "December"}
		"#{month_names[month]} #{year}"
	end

end
