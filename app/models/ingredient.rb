class Ingredient < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :cocktails, throught: :doses
  validates_uniqueness_of :cocktail_id, :scope => [:dose_id]
end
