json.extract! paciente, :id, :pessoa_id, :numerocartaosus, :profissao, :enderecoprofissional, :enderecoresidencial, :nomeconjugue, :contatoconjugue, :string, :profissaoconjugue, :possuifilhos, :filhosquantidade, :idadefilhos, :observacao, :localnascimento, :datacadastro, :dataobito, :ativo, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
