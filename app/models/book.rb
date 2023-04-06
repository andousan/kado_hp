class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :publisher, presence: true

  belongs_to :genre
end
