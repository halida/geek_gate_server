require 'spec_helper'

describe "questions/show" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :title => "Title",
      :description => "MyText",
      :type => "Type",
      :options => "MyText",
      :answer => "Answer",
      :author_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Type/)
    rendered.should match(/MyText/)
    rendered.should match(/Answer/)
    rendered.should match(/1/)
  end
end
