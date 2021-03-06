require File.expand_path('../lib/bci/version', __FILE__)

Gem::Specification.new do |s|
  # Metadata
  s.name = 'bci'
  s.version = Bci::VERSION
  s.authors = ['Daniel Ochoa John']
  s.email = ['dochoajohn@gmail.com']
  s.homepage = 'https://www.github.com/dochoaj'
  s.summary = 'A SDK to connect to BCI developers API'
  s.description = 'A SDK to connect with BCI developers API'
  s.licenses = ['Nonstandard']
  # If you want to show a post-install message, uncomment the following lines
  #    s.post_install_message = <<-MSG
  #
  # MSG

  # Manifest
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.add_development_dependency 'rspec', '~> 3'
  s.add_runtime_dependency 'rest-client', '>= 2.0.2'
end
