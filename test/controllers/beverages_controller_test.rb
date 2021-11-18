require "test_helper"

class BeveragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beverage = beverages(:one)
  end

  test "should get index" do
    get beverages_url, as: :json
    assert_response :success
  end

  test "should create beverage" do
    assert_difference('Beverage.count') do
      post beverages_url, params: { beverage: { brand_id: @beverage.brand_id, category_id: @beverage.category_id, description: @beverage.description, name: @beverage.name, size: @beverage.size } }, as: :json
    end

    assert_response 201
  end

  test "should show beverage" do
    get beverage_url(@beverage), as: :json
    assert_response :success
  end

  test "should update beverage" do
    patch beverage_url(@beverage), params: { beverage: { brand_id: @beverage.brand_id, category_id: @beverage.category_id, description: @beverage.description, name: @beverage.name, size: @beverage.size } }, as: :json
    assert_response 200
  end

  test "should destroy beverage" do
    assert_difference('Beverage.count', -1) do
      delete beverage_url(@beverage), as: :json
    end

    assert_response 204
  end
end
