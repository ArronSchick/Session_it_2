json.extract! lesson, :id, :description, :date, :start_time, :end_time, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
