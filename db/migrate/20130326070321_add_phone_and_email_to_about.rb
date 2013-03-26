class AddPhoneAndEmailToAbout < ActiveRecord::Migration
  def change
    add_column :abouts, :phone, :string
    add_column :abouts, :email, :string
  end
end
