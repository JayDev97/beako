json.extract! budget_item, :id, :item, :quantity, :unit_id, :price, :total, :budget_id, :account_id, :created_at, :updated_at
json.url budget_item_url(budget_item, format: :json)
