class CreateInstathreatUsers < ActiveRecord::Migration
  def change
    create_table :instathreat_users do |t|
      t.string :email
      t.string :phone_number
      t.string :why_owed_money

      t.timestamps null: false
    end
  end
end
