class AddTidToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :tid, :integer
  end
end
