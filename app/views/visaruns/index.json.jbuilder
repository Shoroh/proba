json.array!(@visaruns) do |visarun|
  json.extract! visarun, :id
  json.url visarun_url(visarun, format: :json)
end
