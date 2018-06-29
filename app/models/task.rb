class Task < ApplicationRecord
  validates :title, :description, :status, presence: true
  validates :title, uniqueness: true, length: { maximum: 100 }
  validates :description, length: { maximum: 5000 }

  STATUS_OPTIONS = ['new', 'in progress', 'done']
  validates :status, inclusion: STATUS_OPTIONS
end
