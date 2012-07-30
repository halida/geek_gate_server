require 'spec_helper'

describe "authors/show" do
  before(:each) do
    @author = assign(:author, stub_model(Author,
      :name => "Name",
      :geek_id => 1,
      :avatar => "Avatar",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Avatar/)
    rendered.should match(/MyText/)
  end
end
