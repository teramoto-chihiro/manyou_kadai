class Task < ApplicationRecord
  validates :title, presence: true, length: { in: 1..800 }
  validates :content, presence: true, length: { in: 1..800 }
  validates :deadline, presence: true
end
