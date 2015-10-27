json.array!(@mentorships) do |mentorship|
  json.extract! mentorship, :id
  json.url mentorship_url(mentorship, format: :json)
end
