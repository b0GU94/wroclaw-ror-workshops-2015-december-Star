class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :student_id
      t.datetime :date_of_payment
      t.integer :month

      t.timestamps null: false
    end
  end
end
