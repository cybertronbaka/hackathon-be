class CreateDisease < ActiveRecord::Migration[6.1]
  def change
    create_table :diseases do |t|
      t.string :crop
      t.string :disease
      t.string :description
      t.string :url
      t.timestamps
    end
  end
end
