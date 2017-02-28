json.extract! questionario, :id, :descricao, :created_at, :updated_at
json.url questionario_url(questionario, format: :json)
