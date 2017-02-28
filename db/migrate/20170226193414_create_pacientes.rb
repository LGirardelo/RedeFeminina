class CreatePacientes < ActiveRecord::Migration[5.0]
  def change
    create_table :pacientes do |t|
      t.belongs_to :pessoa, foreign_key: true
      t.string :numerocartaosus
      t.string :profissao
      t.string :enderecoprofissional
      t.string :enderecoresidencial
      t.string :nomeconjugue
      t.string :contatoconjugue
      t.string :string
      t.string :profissaoconjugue
      t.boolean :possuifilhos
      t.integer :filhosquantidade
      t.string :idadefilhos
      t.string :observacao
      t.string :localnascimento
      t.timestamp :datacadastro
      t.date :dataobito
      t.boolean :ativo

      t.timestamps
    end
  end
end
