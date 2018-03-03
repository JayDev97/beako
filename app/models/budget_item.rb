class BudgetItem < ApplicationRecord
    
    belongs_to :budget
    belongs_to :unit
    belongs_to :account
    
end
