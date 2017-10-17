class MainController < ApplicationController

  #Homepage
  def home
    @cms_homepage = CmsHomepage.find(1)
    @news = News.all
  end

  #Pages
  def accounting_office_and_secretarial_services
    @cms_page = CmsPage.find(25)
  end

  def legal
    @cms_page = CmsPage.find(26)
  end

  def corporate_multi_family_office
  end

  def international_tax_planning
  end

  def succession_planning
  end

  def wealth_asset_management
  end

  def redomiciliation_companies_foundations
  end

  def incorporation_ibcs
  end

  def incorporation_foundations
  end

  def corporate_international_tax_planning
  end

  def reinsurance_services
  end

  def banking_services
  end

  def family_offices
  end

  def citizenship_antigua_barbuda
  end

  def citizenship_cyprus
  end

  def citizenship_dominica
  end

  def citizenship_grenada
  end

  def citizenship_malta
  end

  def citizenship_st_kitts_nevis
  end

  def citizenship_st_lucia
  end

  def residency_cyprus
  end

  def residency_malta
  end

  def residency_monaco
  end

  def residency_panama
  end

  def second_passport_panama
  end

  def real_estate
  end
end
