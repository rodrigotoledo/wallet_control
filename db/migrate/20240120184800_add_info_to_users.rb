class AddInfoToUsers < ActiveRecord::Migration[7.1]
  def change
    change_table :users do |t|
      t.string :user_type, null: false
    end
  end
end
