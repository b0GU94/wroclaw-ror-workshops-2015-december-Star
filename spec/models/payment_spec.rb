require 'rails_helper'

RSpec.describe Payment, type: :model do

	describe 'validations' do
		it { is_expected.to validate_inclusion_of(:month).in_array([*1..12])}
		it { is_expected.to validate_inclusion_of(:year).in_array([*1900..Date.today.year + 100])}
	end

	describe 'database columns' do
		it { should have_db_column :month }
		it { should have_db_column :year }
		it { should have_db_column :date_of_payment }
		it { should have_db_column :student_id }

	end

	describe 'associations' do
		it { is_expected.to belong_to :student }
	end
end
