class InputBlood < ApplicationRecord
  validates :leukocyte, presence: true
  validates :seg, presence: true
  validates :date, presence: true
end
