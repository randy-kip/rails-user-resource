require "application_system_test_case"

class CryptocurrenciesTest < ApplicationSystemTestCase
  setup do
    @cryptocurrency = cryptocurrencies(:one)
  end

  test "visiting the index" do
    visit cryptocurrencies_url
    assert_selector "h1", text: "Cryptocurrencies"
  end

  test "should create cryptocurrency" do
    visit cryptocurrencies_url
    click_on "New cryptocurrency"

    fill_in "Name", with: @cryptocurrency.name
    fill_in "Started at", with: @cryptocurrency.started_at
    click_on "Create Cryptocurrency"

    assert_text "Cryptocurrency was successfully created"
    click_on "Back"
  end

  test "should update Cryptocurrency" do
    visit cryptocurrency_url(@cryptocurrency)
    click_on "Edit this cryptocurrency", match: :first

    fill_in "Name", with: @cryptocurrency.name
    fill_in "Started at", with: @cryptocurrency.started_at
    click_on "Update Cryptocurrency"

    assert_text "Cryptocurrency was successfully updated"
    click_on "Back"
  end

  test "should destroy Cryptocurrency" do
    visit cryptocurrency_url(@cryptocurrency)
    click_on "Destroy this cryptocurrency", match: :first

    assert_text "Cryptocurrency was successfully destroyed"
  end
end
