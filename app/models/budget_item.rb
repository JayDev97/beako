class BudgetItem < ApplicationRecord
    
    belongs_to :budget
    belongs_to :unit
    belongs_to :account
    
     after_initialize :init
   
    def init
    
        self.quantity ||= 0
        self.price ||= 0.0
        self.total ||=0.0
    
    end 
    
end
