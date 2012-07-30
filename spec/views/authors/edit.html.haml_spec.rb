require 'spec_helper'

describe "authors/edit" do
  before(:each) do
    @author = assign(:author, stub_model(Author,
      :name => "MyString",
      :geek_id => 1,
      :avatar => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => authors_path(@author), :method => "post" do
      assert_select "input#author_name", :name => "author[name]"
      assert_select "input#author_geek_id", :name => "author[geek_id]"
      assert_select "input#author_avatar", :name => "author[avatar]"
      assert_select "textarea#author_description", :name => "author[description]"
    end
  end
end
