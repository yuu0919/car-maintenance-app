class Car < ApplicationRecord
  belongs_to :user, optional: true
  has_many :histories
end
