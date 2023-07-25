json.extract! publication, :id, :image, :title, :description, :created_at, :updated_at
json.url publication_url(publication, format: :json)
