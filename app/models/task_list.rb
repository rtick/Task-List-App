class TaskList < ActiveRecord::Base
	has_many :tasks
	validates :name, presence: true, uniqueness: true
	validates :description, presence: true
end