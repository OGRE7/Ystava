require 'spec_helper'

describe PagesStatiquesController do

  describe "GET 'a_propos'" do
    it "returns http success" do
      get 'a_propos'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

end
