class Question < ApplicationRecord
  belongs_to :user
  has_many :choices
  has_one :decision
end
