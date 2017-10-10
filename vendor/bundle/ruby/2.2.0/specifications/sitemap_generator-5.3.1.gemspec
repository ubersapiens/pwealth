# -*- encoding: utf-8 -*-
# stub: sitemap_generator 5.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sitemap_generator".freeze
  s.version = "5.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Karl Varga".freeze]
  s.date = "2017-02-27"
  s.description = "SitemapGenerator is a framework-agnostic XML Sitemap generator written in Ruby with automatic Rails integration.  It supports Video, News, Image, Mobile, PageMap and Alternate Links sitemap extensions and includes Rake tasks for managing your sitemaps, as well as many other great features.".freeze
  s.email = "kjvarga@gmail.com".freeze
  s.homepage = "http://github.com/kjvarga/sitemap_generator".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Easily generate XML Sitemaps".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<fog-aws>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 2.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12"])
    else
      s.add_dependency(%q<builder>.freeze, ["~> 3.0"])
      s.add_dependency(%q<fog-aws>.freeze, ["~> 1.2"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_dependency(%q<webmock>.freeze, ["~> 2.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 12"])
    end
  else
    s.add_dependency(%q<builder>.freeze, ["~> 3.0"])
    s.add_dependency(%q<fog-aws>.freeze, ["~> 1.2"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_dependency(%q<webmock>.freeze, ["~> 2.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 12"])
  end
end
