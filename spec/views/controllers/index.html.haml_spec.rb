require 'rails_helper'

RSpec.describe "controllers/index", type: :view do
  before(:each) do
    assign(:controllers, [
      Controller.create!(
        :Update => "Update"
      ),
      Controller.create!(
        :Update => "Update"
      )
    ])
  end

  it "renders a list of controllers" do
    render
    assert_select "tr>td", :text => "Update".to_s, :count => 2
  end
end
