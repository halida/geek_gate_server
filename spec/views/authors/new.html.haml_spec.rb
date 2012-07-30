require 'spec_helper'

describe "authors/new" do
  before(:each) do
    assign(:author, stub_model(Author,
      :name => "MyString",
      :geek_id => 1,
      :avatar => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => authors_path, :method => "post" do
      assert_select "input#author_name", :name => "author[name]"
      assert_select "input#author_geek_id", :name => "author[geek_id]"
      assert_select "input#author_avatar", :name => "author[avatar]"
      assert_select "textarea#author_description", :name => "author[description]"
    end
  end
end
