require 'spec_helper'

describe "authors/index" do
  before(:each) do
    assign(:authors, [
      stub_model(Author,
        :name => "Name",
        :geek_id => 1,
        :avatar => "Avatar",
        :description => "MyText"
      ),
      stub_model(Author,
        :name => "Name",
        :geek_id => 1,
        :avatar => "Avatar",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of authors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
