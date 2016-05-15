json.array!(@courses) do |course|
  json.extract! course, :id, :title, :time, :place, :description, :image_url
  json.url course_url(course, format: :json)
end
