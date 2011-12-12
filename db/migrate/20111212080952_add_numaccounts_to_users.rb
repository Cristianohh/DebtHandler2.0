class AddNumaccountsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :numaccounts, :integer
  end
end
