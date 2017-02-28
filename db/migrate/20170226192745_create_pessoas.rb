class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :telefoneresidencial
      t.string :telefonecelular
      t.date :datanascimento
      t.integer :sexo

      t.timestamps
    end
  end
end
