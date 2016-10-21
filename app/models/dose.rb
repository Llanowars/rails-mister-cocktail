class Dose < ActiveRecord::Base
  validates :description, presence: true
  
end
