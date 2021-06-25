class CreatePhotosTable < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :disease
      t.string :path
      t.timestamps
    end
  end
end
