class CreateTiposervicos < ActiveRecord::Migration[5.0]
  def change
    create_table :tiposervicos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
