class AddNumtransactionsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :numtransactions, :integer
  end
end
