class AddYearToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :year, :int
  end
end
