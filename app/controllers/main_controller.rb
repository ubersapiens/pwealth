class MainController < ApplicationController

  #Homepage
  def home
    @cms_homepage = CmsHomepage.find(1)
    @news = News.all
  end

  #Pages
  def multi_family_office
    @cms_page = CmsPage.find(1)
  end

  def international_tax_planning
    @cms_page = CmsPage.find(2)
  end

  def succession_planning
    @cms_page = CmsPage.find(3)
  end

  def wealth_management
    @cms_page = CmsPage.find(4)
  end

  def antigua_barbuda_citizenship
    @cms_page = CmsPage.find(5)
  end

  def cyprus_citizenship
    @cms_page = CmsPage.find(6)
  end

  def dominica_citizenship
    @cms_page = CmsPage.find(7)
  end

  def grenada_citizenship
    @cms_page = CmsPage.find(8)
  end

  def malta_citizenship
    @cms_page = CmsPage.find(9)
  end

  def st_kitts_and_nevis_citizenship
    @cms_page = CmsPage.find(10)
  end

  def st_lucia_citizenship
    @cms_page = CmsPage.find(11)
  end

  def cyprus_residency
    @cms_page = CmsPage.find(12)
  end

  def malta_residency
    @cms_page = CmsPage.find(13)
  end

  def monaco_residency
    @cms_page = CmsPage.find(14)
  end

  def panama_residency
    @cms_page = CmsPage.find(15)
  end

  def panama_second_passport
    @cms_page = CmsPage.find(16)
  end

  def real_estate
    @cms_page = CmsPage.find(17)
  end

  def tax_residence
    @cms_page = CmsPage.find(18)
  end

  def incorporation_of_companies
    @cms_page = CmsPage.find(19)
  end

  def incorporation_of_foundations
    @cms_page = CmsPage.find(20)
  end

  def formation_of_trusts
    @cms_page = CmsPage.find(21)
  end

  def reinsurance_services
    @cms_page = CmsPage.find(22)
  end

  def banking_services
    @cms_page = CmsPage.find(23)
  end

  def family_offices
    @cms_page = CmsPage.find(24)
  end

  def accounting_office_and_secretarial_services
    @cms_page = CmsPage.find(25)
  end

  def legal
    @cms_page = CmsPage.find(26)
  end
end
