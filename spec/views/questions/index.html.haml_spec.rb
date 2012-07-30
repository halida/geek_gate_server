require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :title => "Title",
        :description => "MyText",
        :type => "Type",
        :options => "MyText",
        :answer => "Answer",
        :author_id => 1
      ),
      stub_model(Question,
        :title => "Title",
        :description => "MyText",
        :type => "Type",
        :options => "MyText",
        :answer => "Answer",
        :author_id => 1
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
