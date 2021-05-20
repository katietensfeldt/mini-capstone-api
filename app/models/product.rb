class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}


  def is_discounted?
    price < 10
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

  def image_urls
    urls = []
    images.each do |image|
      urls << image.url
    end
    urls
  end

end
