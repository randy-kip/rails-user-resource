class CreateStockPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :stock_prices do |t|
      t.decimal :price
      t.date :captured_at
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
