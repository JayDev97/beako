class Budget < ApplicationRecord
    
   belongs_to :year
   belongs_to :crop
   belongs_to :user
   has_many :budget_items
   
end
