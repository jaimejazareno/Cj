class CreateCreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :create_accounts do |t|
      
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
