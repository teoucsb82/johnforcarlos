class AddCheckToFunds < ActiveRecord::Migration
  def change
    add_column :funds, :paid, :boolean
  end
end
