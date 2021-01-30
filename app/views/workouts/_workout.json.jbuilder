# frozen_string_literal: true

json.extract! workout, :id, :created_at, :updated_at
json.url workout_url(workout, format: :json)
