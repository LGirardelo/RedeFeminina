json.extract! produto, :id, :descricao, :valor, :doacao, :created_at, :updated_at
json.url produto_url(produto, format: :json)
