require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :title => "MyString",
      :description => "MyText",
      :type => "",
      :options => "MyText",
      :answer => "MyString",
      :author_id => 1
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path(@question), :method => "post" do
      assert_select "input#question_title", :name => "question[title]"
      assert_select "textarea#question_description", :name => "question[description]"
      assert_select "input#question_type", :name => "question[type]"
      assert_select "textarea#question_options", :name => "question[options]"
      assert_select "input#question_answer", :name => "question[answer]"
      assert_select "input#question_author_id", :name => "question[author_id]"
    end
  end
end
