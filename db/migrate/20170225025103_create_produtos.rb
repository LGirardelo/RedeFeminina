class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.numeric :valor
      t.boolean :doacao

      t.timestamps
    end
  end
end
