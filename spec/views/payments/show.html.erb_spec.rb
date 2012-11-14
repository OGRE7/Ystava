require 'spec_helper'

describe "payments/show" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :description => "Description",
      :somme => "9.99",
      :utilisateur_id => 1,
      :vers_utilisateur_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
