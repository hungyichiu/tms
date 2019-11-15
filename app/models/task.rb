class Task < ApplicationRecord
  validates :title, :end_time, presence: true
end
