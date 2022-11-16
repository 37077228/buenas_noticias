class Category < ApplicationRecord
  has_many :news, dependent: :restrict_with_exception
end
