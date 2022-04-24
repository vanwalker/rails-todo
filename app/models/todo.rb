class Todo < ApplicationRecord
  belongs_to :user
  has_many :groceries, dependent: :destroy
end
