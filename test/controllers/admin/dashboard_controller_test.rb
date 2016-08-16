require "test_helper"

describe Admin::DashboardController do
  it "should get dashboard" do
    get admin_dashboard_dashboard_url
    value(response).must_be :success?
  end

end
