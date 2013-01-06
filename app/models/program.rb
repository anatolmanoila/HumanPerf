class Program < ActiveRecord::Base
  attr_accessible :task_title, :of_type, :user_progress, :user_rating, :user_status

  validates :task_title, presence: true, length: { maximum: 120 }
end
