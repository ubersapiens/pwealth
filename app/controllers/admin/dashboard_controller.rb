class Admin::DashboardController < ApplicationController
  before_action :admin_only

  def index
  end

  def pages
    @cms_pages = CmsPage.all
  end
end
