class Task < ApplicationRecord
  validates :title, :end_time, presence: true
  # scope :order_by, ->(p) { order( Arel.sql( %Q"#{p[:sort]}" + " " + "#{p[:direction]}" ) ) }
  scope :order_by, ->(params) { order( Arel.sql "#{params[:sort]} #{params[:direction]}" ) }
  
end
