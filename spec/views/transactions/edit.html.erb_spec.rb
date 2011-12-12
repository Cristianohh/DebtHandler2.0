require 'spec_helper'

describe "transactions/edit.html.erb" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :id => 1,
      :name => "MyString",
      :description => "MyString",
      :user_id => 1,
      :accounttype => "MyString",
      :amount => 1
    ))
  end

  it "renders the edit transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transactions_path(@transaction), :method => "post" do
      assert_select "input#transaction_id", :name => "transaction[id]"
      assert_select "input#transaction_name", :name => "transaction[name]"
      assert_select "input#transaction_description", :name => "transaction[description]"
      assert_select "input#transaction_user_id", :name => "transaction[user_id]"
      assert_select "input#transaction_accounttype", :name => "transaction[accounttype]"
      assert_select "input#transaction_amount", :name => "transaction[amount]"
    end
  end
end
