class Page < ApplicationRecord
  has_many :messages
  has_many :streams
end
