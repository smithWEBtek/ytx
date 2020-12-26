class Video < ApplicationRecord
  validates :title, uniqueness: true
end
