# -*- encoding: utf-8 -*-
# stub: bulma-clean-theme 0.9.2 ruby lib

Gem::Specification.new do |s|
  s.name = "bulma-clean-theme".freeze
  s.version = "0.9.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["chrisrhymes".freeze]
  s.date = "2020-10-03"
  s.email = ["csrhymes@gmail.com".freeze]
  s.homepage = "https://www.github.com/chrisrhymes/bulma-clean-theme".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Clean and simple Jekyll theme built using Bulma".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 3.8"])
    s.add_runtime_dependency(%q<jekyll-feed>.freeze, ["~> 0.11"])
    s.add_runtime_dependency(%q<jekyll-sitemap>.freeze, ["~> 1.2"])
    s.add_runtime_dependency(%q<jekyll-paginate>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.5"])
    s.add_runtime_dependency(%q<kramdown>.freeze, ["~> 1.17"])
    s.add_runtime_dependency(%q<rouge>.freeze, ["~> 3.3"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
  else
    s.add_dependency(%q<jekyll>.freeze, ["~> 3.8"])
    s.add_dependency(%q<jekyll-feed>.freeze, ["~> 0.11"])
    s.add_dependency(%q<jekyll-sitemap>.freeze, ["~> 1.2"])
    s.add_dependency(%q<jekyll-paginate>.freeze, ["~> 1.1"])
    s.add_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.5"])
    s.add_dependency(%q<kramdown>.freeze, ["~> 1.17"])
    s.add_dependency(%q<rouge>.freeze, ["~> 3.3"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
  end
end
