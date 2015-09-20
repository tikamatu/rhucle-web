json.array!(@disco_boxes) do |disco_box|
  json.extract! disco_box, :id, :title, :url, :jacket, :icon_context_type, :price, :track_list
  json.url disco_box_url(disco_box, format: :json)
end
