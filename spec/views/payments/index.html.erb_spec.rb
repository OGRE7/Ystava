require 'spec_helper'

describe "payments/index" do
  before(:each) do
    assign(:payments, [
      stub_model(Payment,
        :description => "Description",
        :somme => "9.99",
        :utilisateur_id => 1,
        :vers_utilisateur_id => 2
      ),
      stub_model(Payment,
        :description => "Description",
        :somme => "9.99",
        :utilisateur_id => 1,
        :vers_utilisateur_id => 2
      )
    ])
  end

  it "renders a list of payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
