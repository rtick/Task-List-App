class Task < ActiveRecord::Base
	belongs_to :task_list
	belongs_to :user
	validates :title, presence: true
	validates :priority, presence: true, numericality: {greater_than: 0, less_than_or_equal_to: 10}
	# jarp: for a range, you should use 'inclusion: { in: 1..10 }'. one rule and more expressive
	validates :due_date, presence: true
	validates :task_list_id, presence: true
end
