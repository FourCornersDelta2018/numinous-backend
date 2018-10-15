attributes = []

json.languages @lang_attributes do |attribute|
  attributes.push(attribute.language)
  json.array! attributes
end
