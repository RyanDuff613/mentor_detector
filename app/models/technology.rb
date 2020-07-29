class Technology < ApplicationRecord
  validates :technology, :presence => true, :uniqueness => true
  validates :description, :presence => true
  validates_length_of :description, minimum: 20
  has_and_belongs_to_many :users

end