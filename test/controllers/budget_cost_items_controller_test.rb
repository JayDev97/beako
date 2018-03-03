require 'test_helper'

class BudgetCostItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budget_cost_item = budget_cost_items(:one)
  end

  test "should get index" do
    get budget_cost_items_url
    assert_response :success
  end

  test "should get new" do
    get new_budget_cost_item_url
    assert_response :success
  end

  test "should create budget_cost_item" do
    assert_difference('BudgetCostItem.count') do
      post budget_cost_items_url, params: { budget_cost_item: { account_id: @budget_cost_item.account_id, budget_id: @budget_cost_item.budget_id, item: @budget_cost_item.item, price: @budget_cost_item.price, quantity: @budget_cost_item.quantity, total: @budget_cost_item.total, unit_id: @budget_cost_item.unit_id } }
    end

    assert_redirected_to budget_cost_item_url(BudgetCostItem.last)
  end

  test "should show budget_cost_item" do
    get budget_cost_item_url(@budget_cost_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_budget_cost_item_url(@budget_cost_item)
    assert_response :success
  end

  test "should update budget_cost_item" do
    patch budget_cost_item_url(@budget_cost_item), params: { budget_cost_item: { account_id: @budget_cost_item.account_id, budget_id: @budget_cost_item.budget_id, item: @budget_cost_item.item, price: @budget_cost_item.price, quantity: @budget_cost_item.quantity, total: @budget_cost_item.total, unit_id: @budget_cost_item.unit_id } }
    assert_redirected_to budget_cost_item_url(@budget_cost_item)
  end

  test "should destroy budget_cost_item" do
    assert_difference('BudgetCostItem.count', -1) do
      delete budget_cost_item_url(@budget_cost_item)
    end

    assert_redirected_to budget_cost_items_url
  end
end
