require "application_system_test_case"

class EatersTest < ApplicationSystemTestCase
  setup do
    @eater = eaters(:one)
  end

  test "visiting the index" do
    visit eaters_url
    assert_selector "h1", text: "Eaters"
  end

  test "creating a Eater" do
    visit eaters_url
    click_on "New Eater"

    fill_in "Delivery address", with: @eater.delivery_address
    fill_in "Email", with: @eater.email
    fill_in "Name", with: @eater.name
    fill_in "Notes", with: @eater.notes
    fill_in "Phone", with: @eater.phone
    click_on "Create Eater"

    assert_text "Eater was successfully created"
    click_on "Back"
  end

  test "updating a Eater" do
    visit eaters_url
    click_on "Edit", match: :first

    fill_in "Delivery address", with: @eater.delivery_address
    fill_in "Email", with: @eater.email
    fill_in "Name", with: @eater.name
    fill_in "Notes", with: @eater.notes
    fill_in "Phone", with: @eater.phone
    click_on "Update Eater"

    assert_text "Eater was successfully updated"
    click_on "Back"
  end

  test "destroying a Eater" do
    visit eaters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eater was successfully destroyed"
  end
end
