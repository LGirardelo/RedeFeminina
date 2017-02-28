json.extract! pessoa, :id, :nome, :cpf, :rg, :telefoneresidencial, :telefonecelular, :datanascimento, :sexo, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
