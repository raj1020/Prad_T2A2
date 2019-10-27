require 'test_helper'

class CooksFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cooks_food = cooks_foods(:one)
  end

  test "should get index" do
    get cooks_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_cooks_food_url
    assert_response :success
  end

  test "should create cooks_food" do
    assert_difference('CooksFood.count') do
      post cooks_foods_url, params: { cooks_food: { cook_id: @cooks_food.cook_id, food_id: @cooks_food.food_id, price: @cooks_food.price } }
    end

    assert_redirected_to cooks_food_url(CooksFood.last)
  end

  test "should show cooks_food" do
    get cooks_food_url(@cooks_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_cooks_food_url(@cooks_food)
    assert_response :success
  end

  test "should update cooks_food" do
    patch cooks_food_url(@cooks_food), params: { cooks_food: { cook_id: @cooks_food.cook_id, food_id: @cooks_food.food_id, price: @cooks_food.price } }
    assert_redirected_to cooks_food_url(@cooks_food)
  end

  test "should destroy cooks_food" do
    assert_difference('CooksFood.count', -1) do
      delete cooks_food_url(@cooks_food)
    end

    assert_redirected_to cooks_foods_url
  end
end
