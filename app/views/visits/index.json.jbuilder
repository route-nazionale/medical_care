json.array!(@visits) do |visit|
  json.extract! visit, :id, :human_id, :location_id, :date, :hour, :doctor, :anamnesi, :diagnosi
  json.url visit_url(visit, format: :json)
end
