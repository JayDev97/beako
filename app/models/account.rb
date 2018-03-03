class Account < ApplicationRecord
    
    has_many :budget_items
    
    def name_with_initial
    "#{account_type} - #{name}"
    end
    
end
