class AddConstrainsToColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :companies, :name
    add_column :companies, :name, :string, null: false

    remove_column :companies, :ticker_symbol
    add_column :companies, :ticker_symbol, :string, null: false
    
    remove_column :companies, :risk_factor
    add_column :companies, :risk_factor, :string, null: false
  end
end
