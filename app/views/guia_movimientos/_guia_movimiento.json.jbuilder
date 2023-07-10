json.extract! guia_movimiento, :id, :user_id, :nombre_receptor, :email_receptor, :unidad_receptor, :observacion, :created_at, :updated_at
json.url guia_movimiento_url(guia_movimiento, format: :json)
