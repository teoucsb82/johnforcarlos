class AddNamesToFunds < ActiveRecord::Migration
  def change
    add_column :funds, :name, :string
  end
end
