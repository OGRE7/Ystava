require 'spec_helper'

describe "payments/edit" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :description => "MyString",
      :somme => "9.99",
      :utilisateur_id => 1,
      :vers_utilisateur_id => 1
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path(@payment), :method => "post" do
      assert_select "input#payment_description", :name => "payment[description]"
      assert_select "input#payment_somme", :name => "payment[somme]"
      assert_select "input#payment_utilisateur_id", :name => "payment[utilisateur_id]"
      assert_select "input#payment_vers_utilisateur_id", :name => "payment[vers_utilisateur_id]"
    end
  end
end
