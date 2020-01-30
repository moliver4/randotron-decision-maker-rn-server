class Choice < ApplicationRecord
  belongs_to :question
  has_one :decision
end
