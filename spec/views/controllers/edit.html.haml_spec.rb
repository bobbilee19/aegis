require 'rails_helper'

RSpec.describe "controllers/edit", type: :view do
  before(:each) do
    @controller = assign(:controller, Controller.create!(
      :Update => "MyString"
    ))
  end

  it "renders the edit controller form" do
    render

    assert_select "form[action=?][method=?]", controller_path(@controller), "post" do

      assert_select "input#controller_Update[name=?]", "controller[Update]"
    end
  end
end
