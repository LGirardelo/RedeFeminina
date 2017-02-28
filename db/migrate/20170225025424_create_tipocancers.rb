class CreateTipocancers < ActiveRecord::Migration[5.0]
  def change
    create_table :tipocancers do |t|
      t.string :descricao
      t.string :nivelgravidade

      t.timestamps
    end
  end
end
