class CreateProfissionals < ActiveRecord::Migration[5.0]
  def change
    create_table :profissionals do |t|
      t.string :especializacao
      t.belongs_to :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
