class Restaurant < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :category

  has_many :product_categories
  has_many :orders

  validates :name, :delivery_tax, :city, :neighborhood, :street, :number, presence: true

  has_one_attached :image
end
