class CreateStrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :strolls do |t|
      t.belongs_to :dog_sitter, index: true
      t.timestamps
    end
  end
end
