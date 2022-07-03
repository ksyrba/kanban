class List < ApplicationRecord
  validates :title, length: { in: 1..255 }
end
