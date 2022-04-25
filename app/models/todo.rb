class Todo < ApplicationRecord
  belongs_to :user
  has_many :groceries, dependent: :destroy

  COMPOSANTS = ["pain","fromage", "chocolats"]


end
