class MainController < ApplicationController
  def home
    @cms_homepage = CmsHomepage.find(1)
    @news = News.all
  end

  def accounting_office_secretarial_services
  end

  def legal
  end
end
