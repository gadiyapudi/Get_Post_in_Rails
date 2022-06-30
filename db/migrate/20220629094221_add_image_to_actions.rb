class AddImageToActions < ActiveRecord::Migration[6.1]
  def change
    add_column :actions, :image, :string
  end
end
