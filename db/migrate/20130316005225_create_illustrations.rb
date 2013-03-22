class CreateIllustrations < ActiveRecord::Migration
  def change
    create_table :illustrations do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
