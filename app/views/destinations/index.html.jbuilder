json.destinations @destinations do |destination|
  json.destination destination
  json.geography destination.geo_attributes[0].geography
  json.experience destination.exp_attributes[0].experience
  json.language destination.lang_attributes[0].language
end
