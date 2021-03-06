json.array!(@reports) do |report|
  json.extract! report, :lat, :lng, :time, :name
  json.description (report.description).gsub("\n", "<br />").html_safe
end
