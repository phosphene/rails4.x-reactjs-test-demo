class AddMyfileToArtifacts < ActiveRecord::Migration
  def change
    add_column :artifacts, :myfile, :string
  end
end
