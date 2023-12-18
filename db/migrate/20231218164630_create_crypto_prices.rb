class CreateCryptoPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :crypto_prices do |t|
      t.decimal :price
      t.references :Cryptocurrency, null: false, foreign_key: true
      t.date :captured_at

      t.timestamps
    end
  end
end
