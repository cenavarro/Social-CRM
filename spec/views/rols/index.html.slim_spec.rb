require 'spec_helper'

describe "rols/index.html.slim" do
  before(:each) do
    assign(:rols, [
      stub_model(Rol,
        :name => "Name"
      ),
      stub_model(Rol,
        :name => "Name"
      )
    ])
  end

  it "renders a list of rols" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
