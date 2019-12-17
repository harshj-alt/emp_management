class Student < ApplicationRecord
  validates :name , presence: true
  validates :age , presence: true
  validates :city , presence: true
  validates :Address , presence: true
  validates :postal_code , presence: true
end