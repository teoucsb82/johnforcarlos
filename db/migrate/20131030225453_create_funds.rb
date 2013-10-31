class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :email
      t.integer :dollars

      t.timestamps
    end
  end
end
