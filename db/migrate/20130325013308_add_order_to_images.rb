class AddOrderToImages < ActiveRecord::Migration
  def change
  	add_column :illustrations, :order, :integer
  	add_column :advertisements, :order, :integer
  	add_column :steps, :order, :integer
  end
end
