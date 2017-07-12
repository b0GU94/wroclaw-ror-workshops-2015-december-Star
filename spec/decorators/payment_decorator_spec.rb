require 'spec_helper'

describe PaymentDecorator do
	let(:payment) { build :payment, student_id: 1, month: 3, year: 2016, date_of_payment: '2017-03-11 12:12:12' }

	describe "#month_name" do
		subject { payment.decorate.month_name }
		it { is_expected.to eq 'March 2016' }
	end
end
