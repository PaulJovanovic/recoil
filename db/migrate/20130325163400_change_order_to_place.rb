class ChangeOrderToPlace < ActiveRecord::Migration
  def up
  	rename_column :advertisements, :order, :placement
  	rename_column :illustrations, :order, :placement
  	rename_column :steps, :order, :placement
  end
end
