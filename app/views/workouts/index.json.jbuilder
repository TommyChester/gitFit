# frozen_string_literal: true

json.array! @workouts, partial: 'workouts/workout', as: :workout
