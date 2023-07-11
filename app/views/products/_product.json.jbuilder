json.extract! product, :id, :nombre, :codigoInterno, :stock, :stockMin, :foto, :created_at, :updated_at
json.url product_url(product, format: :json)
