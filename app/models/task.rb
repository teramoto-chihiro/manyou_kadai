class Task < ApplicationRecord
  validates :title, presence: true, length: { in: 1..1000 }
  validates :content, presence: true, length: { in: 1..1000 }
  validates :deadline, presence: true
  validates :status, presence: true
  enum status: { 未着手:1, 着手:2, 完了:3 }
  scope :search_title, -> (search_title) { where("title LIKE ?", "%#{search_title}%") }
  scope :search_status, -> (search_status) { where(status: search_status)}
end
