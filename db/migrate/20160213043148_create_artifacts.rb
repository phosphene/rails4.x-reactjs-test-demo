class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.string :name
      t.string :file_type
      t.string :corpus
      t.integer :catalog_number

      t.timestamps null: false
    end
  end
end
