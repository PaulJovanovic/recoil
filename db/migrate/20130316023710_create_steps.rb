class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :description
      t.integer :step

      t.timestamps
    end
  end
end
