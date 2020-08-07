class ChangeMotaToBeTextInSaches < ActiveRecord::Migration[5.2]
  def change
    change_column :saches, :mota, :text
  end
end
