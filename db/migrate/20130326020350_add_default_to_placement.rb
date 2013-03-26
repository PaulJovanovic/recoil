class AddDefaultToPlacement < ActiveRecord::Migration
  def change
  	change_column :advertisements, :placement, :integer, :default => 0
  	change_column :illustrations, :placement, :integer, :default => 0
  	change_column :steps, :placement, :integer, :default => 0
  end
end
