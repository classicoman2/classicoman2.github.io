# -*- encoding: utf-8 -*-
# stub: jekyll-rtd-theme 2.0.10 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-rtd-theme".freeze
  s.version = "2.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["saowang".freeze]
  s.date = "2020-10-29"
  s.email = ["saowang@outlook.com".freeze]
  s.homepage = "https://github.com/rundocs/jekyll-rtd-theme".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Just another documentation theme compatible with GitHub Pages".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<github-pages>.freeze, ["~> 209"])
  else
    s.add_dependency(%q<github-pages>.freeze, ["~> 209"])
  end
end
