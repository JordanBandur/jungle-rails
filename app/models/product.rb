class Product < ApplicationRecord
  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validate :price_must_be_present
  validates :quantity, presence: true
  validates :category, presence: true

  private

  def price_must_be_present
    if price_cents.nil? || price_cents <= 0
      errors.add(:price, "can't be blank")
    end
  end
end
