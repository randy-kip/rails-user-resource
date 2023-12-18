require "application_system_test_case"

class CryptoPricesTest < ApplicationSystemTestCase
  setup do
    @crypto_price = crypto_prices(:one)
  end

  test "visiting the index" do
    visit crypto_prices_url
    assert_selector "h1", text: "Crypto prices"
  end

  test "should create crypto price" do
    visit crypto_prices_url
    click_on "New crypto price"

    fill_in "Cryptocurrency", with: @crypto_price.Cryptocurrency_id
    fill_in "Captured at", with: @crypto_price.captured_at
    fill_in "Price", with: @crypto_price.price
    click_on "Create Crypto price"

    assert_text "Crypto price was successfully created"
    click_on "Back"
  end

  test "should update Crypto price" do
    visit crypto_price_url(@crypto_price)
    click_on "Edit this crypto price", match: :first

    fill_in "Cryptocurrency", with: @crypto_price.Cryptocurrency_id
    fill_in "Captured at", with: @crypto_price.captured_at
    fill_in "Price", with: @crypto_price.price
    click_on "Update Crypto price"

    assert_text "Crypto price was successfully updated"
    click_on "Back"
  end

  test "should destroy Crypto price" do
    visit crypto_price_url(@crypto_price)
    click_on "Destroy this crypto price", match: :first

    assert_text "Crypto price was successfully destroyed"
  end
end
