class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    
    validates :start_date, presence: true
    validates :duration, presence: true, numericality: { divisible_by: 5 }
    #validates :title, presence: true, length: {minimum: 5, maximum: 140}
    validates :description, presence: true, length: {minimum: 20, maximum: 1000}
    validates :price, presence: true, length: {minimum: 1, maximum: 1000}
    #validates :location, length: {minimum: 3, maximum: 14}
end
