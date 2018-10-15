attributes = []

json.geographies @geo_attributes do |attribute|
  attributes.push(attribute.geography)
  json.array! attributes
end
