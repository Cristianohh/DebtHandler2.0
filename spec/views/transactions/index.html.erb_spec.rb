require 'spec_helper'

describe "transactions/index.html.erb" do
  before(:each) do
    assign(:transactions, [
      stub_model(Transaction,
        :id => 1,
        :name => "Name",
        :description => "Description",
        :user_id => 1,
        :accounttype => "Accounttype",
        :amount => 1
      ),
      stub_model(Transaction,
        :id => 1,
        :name => "Name",
        :description => "Description",
        :user_id => 1,
        :accounttype => "Accounttype",
        :amount => 1
      )
    ])
  end

  it "renders a list of transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Accounttype".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
