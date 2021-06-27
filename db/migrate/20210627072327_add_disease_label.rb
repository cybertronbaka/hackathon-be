class AddDiseaseLabel < ActiveRecord::Migration[6.1]
  def change
    add_column :diseases, :disease_label, :string
  end
end
