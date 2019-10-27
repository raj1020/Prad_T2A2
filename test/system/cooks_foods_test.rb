require "application_system_test_case"

class CooksFoodsTest < ApplicationSystemTestCase
  setup do
    @cooks_food = cooks_foods(:one)
  end

  test "visiting the index" do
    visit cooks_foods_url
    assert_selector "h1", text: "Cooks Foods"
  end

  test "creating a Cooks food" do
    visit cooks_foods_url
    click_on "New Cooks Food"

    fill_in "Cook", with: @cooks_food.cook_id
    fill_in "Food", with: @cooks_food.food_id
    fill_in "Price", with: @cooks_food.price
    click_on "Create Cooks food"

    assert_text "Cooks food was successfully created"
    click_on "Back"
  end

  test "updating a Cooks food" do
    visit cooks_foods_url
    click_on "Edit", match: :first

    fill_in "Cook", with: @cooks_food.cook_id
    fill_in "Food", with: @cooks_food.food_id
    fill_in "Price", with: @cooks_food.price
    click_on "Update Cooks food"

    assert_text "Cooks food was successfully updated"
    click_on "Back"
  end

  test "destroying a Cooks food" do
    visit cooks_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cooks food was successfully destroyed"
  end
end
