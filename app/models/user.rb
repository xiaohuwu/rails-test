class User < ApplicationRecord
  authenticates_with_sorcery!


  validates :password, length: { minimum: 3 }, if: -> { new_record? }
  validates :password, confirmation: true, if: -> { new_record? }
  validates :email, uniqueness: true


end
