# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rspec-sidekiq"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Phil Ostler"]
  s.date = "2014-01-21"
  s.description = "Simple testing of Sidekiq jobs via a collection of matchers and helpers"
  s.email = "github@philostler.com"
  s.homepage = "http://github.com/philostler/rspec-sidekiq"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "RSpec for Sidekiq"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<sidekiq>, [">= 2.4.0"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.7.0"])
      s.add_development_dependency(%q<fuubar>, [">= 1.1.0"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_development_dependency(%q<sidekiq>, [">= 2.4.0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_dependency(%q<sidekiq>, [">= 2.4.0"])
      s.add_dependency(%q<coveralls>, ["~> 0.7.0"])
      s.add_dependency(%q<fuubar>, [">= 1.1.0"])
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_dependency(%q<sidekiq>, [">= 2.4.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
    s.add_dependency(%q<sidekiq>, [">= 2.4.0"])
    s.add_dependency(%q<coveralls>, ["~> 0.7.0"])
    s.add_dependency(%q<fuubar>, [">= 1.1.0"])
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
    s.add_dependency(%q<sidekiq>, [">= 2.4.0"])
  end
end
