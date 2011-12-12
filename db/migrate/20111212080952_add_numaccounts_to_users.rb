class AddNumaccountsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :numaccounts, :integer
  end

  def self.down
    remove_column :users, :numaccounts
  end
end
