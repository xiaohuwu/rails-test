class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}, uniqueness: true
  validates :text, presence: true, length: {minmum: 50, maximum: 20000}
  belongs_to :user
  has_many :comments
end
