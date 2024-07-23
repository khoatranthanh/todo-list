class Task < ApplicationRecord
  enum priority: { low: 'low', medium: 'medium', high: 'high' }

  validates :title, :sub_title, :due_date, :priority, presence: true
end
