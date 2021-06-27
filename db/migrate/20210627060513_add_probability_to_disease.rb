class AddProbabilityToDisease < ActiveRecord::Migration[6.1]
  def change
    add_column :diseases, :probability, :float
  end
end
