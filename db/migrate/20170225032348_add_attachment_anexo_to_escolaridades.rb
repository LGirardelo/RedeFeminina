class AddAttachmentAnexoToEscolaridades < ActiveRecord::Migration
  def self.up
    change_table :escolaridades do |t|
      t.attachment :anexo
    end
  end

  def self.down
    remove_attachment :escolaridades, :anexo
  end
end
