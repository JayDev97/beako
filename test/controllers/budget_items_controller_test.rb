require 'test_helper'

class BudgetItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budget_item = budget_items(:one)
  end

  test "should get index" do
    get budget_items_url
    assert_response :success
  end

  test "should get new" do
    get new_budget_item_url
    assert_response :success
  end

  test "should create budget_item" do
    assert_difference('BudgetItem.count') do
      post budget_items_url, params: { budget_item: { account_id: @budget_item.account_id, budget_id: @budget_item.budget_id, item: @budget_item.item, price: @budget_item.price, quantity: @budget_item.quantity, total: @budget_item.total, unit_id: @budget_item.unit_id } }
    end

    assert_redirected_to budget_item_url(BudgetItem.last)
  end

  test "should show budget_item" do
    get budget_item_url(@budget_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_budget_item_url(@budget_item)
    assert_response :success
  end

  test "should update budget_item" do
    patch budget_item_url(@budget_item), params: { budget_item: { account_id: @budget_item.account_id, budget_id: @budget_item.budget_id, item: @budget_item.item, price: @budget_item.price, quantity: @budget_item.quantity, total: @budget_item.total, unit_id: @budget_item.unit_id } }
    assert_redirected_to budget_item_url(@budget_item)
  end

  test "should destroy budget_item" do
    assert_difference('BudgetItem.count', -1) do
      delete budget_item_url(@budget_item)
    end

    assert_redirected_to budget_items_url
  end
end
