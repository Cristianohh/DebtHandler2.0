class AddNumtransactionsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :numtransactions, :integer
  end

  def self.down
    remove_column :users, :numtransactions
  end
end
