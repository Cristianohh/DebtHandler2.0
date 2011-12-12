class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.string :accounttype
      t.double :amount

      t.timestamps
    end
  end
end
