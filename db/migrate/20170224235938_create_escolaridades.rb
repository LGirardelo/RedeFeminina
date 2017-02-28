class CreateEscolaridades < ActiveRecord::Migration[5.0]
  def change
    create_table :escolaridades do |t|
      t.string :descricao_escolaridade

      t.timestamps
    end
  end
end
