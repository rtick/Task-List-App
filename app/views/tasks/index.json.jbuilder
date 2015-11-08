json.array!(@tasks) do |task|
  json.extract! task, :id, :Title, :Description, :Priority, :DueDate, :IsCompleteToggle
  json.url task_url(task, format: :json)
end
