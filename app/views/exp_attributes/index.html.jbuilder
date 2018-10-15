attributes = []

json.experiences @exp_attributes do |attribute|
  attributes.push(attribute.experience)
  json.array! attributes
end
