# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "paperclip-meta"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alexey Bondar", "Tee Parham"]
  s.date = "2014-02-27"
  s.description = "Add width, height and size methods to paperclip images"
  s.email = ["y8@ya.ru", "tee@neighborland.com"]
  s.homepage = "http://github.com/teeparham/paperclip-meta"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.3"
  s.summary = "Add width, height, and size to paperclip images"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paperclip>, ["< 5.0", ">= 3.0.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<minitest>, ["~> 4.7"])
      s.add_development_dependency(%q<mocha>, ["~> 1.0"])
      s.add_development_dependency(%q<activerecord>, ["~> 4.0"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3"])
    else
      s.add_dependency(%q<paperclip>, ["< 5.0", ">= 3.0.2"])
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<minitest>, ["~> 4.7"])
      s.add_dependency(%q<mocha>, ["~> 1.0"])
      s.add_dependency(%q<activerecord>, ["~> 4.0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<paperclip>, ["< 5.0", ">= 3.0.2"])
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<minitest>, ["~> 4.7"])
    s.add_dependency(%q<mocha>, ["~> 1.0"])
    s.add_dependency(%q<activerecord>, ["~> 4.0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3"])
  end
end
