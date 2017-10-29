class Admin::DashboardController < ApplicationController
  before_action :admin_only

  def index
  end

  def pages
    @cms_pages = CmsPage.all
  end

  def contacts
    @contacts = Contact.all
  end

  def news
    @news = News.all
  end
end
