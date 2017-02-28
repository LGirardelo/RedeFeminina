class CreateEstadocivils < ActiveRecord::Migration[5.0]
  def change
    create_table :estadocivils do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
