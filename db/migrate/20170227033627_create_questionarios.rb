class CreateQuestionarios < ActiveRecord::Migration[5.0]
  def change
    create_table :questionarios do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
