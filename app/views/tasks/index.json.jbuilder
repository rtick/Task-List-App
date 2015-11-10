json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :priority, :due_date, :is_complete_toggle, :task_list_id
  json.url task_url(task, format: :json)
end
