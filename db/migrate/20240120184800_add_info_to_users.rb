class AddInfoToUsers < ActiveRecord::Migration[7.1]
  def change
    change_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :user_type, null: false
      t.string :phone, null: false
      t.string :address, null: false
    end
  end
end
