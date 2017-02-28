class CreateQuestaos < ActiveRecord::Migration[5.0]
  def change
    create_table :questaos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
