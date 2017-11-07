class AddAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.references :user
      t.timestamps
    end
  end
end
