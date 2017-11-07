class AddCurrenciesMovements < ActiveRecord::Migration[5.1]
  def change
    create_join_table :currencies, :movements do |t|
      t.index :currency_id
      t.index :movement_id
      t.decimal :exchange
      t.timestamps
    end
  end
end
