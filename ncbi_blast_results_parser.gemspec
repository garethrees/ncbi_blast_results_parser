# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ncbi_blast_results_parser/version'

Gem::Specification.new do |gem|
  gem.name          = 'ncbi_blast_results_parser'
  gem.version       = NCBIBlastResultsParser::VERSION
  gem.authors       = ['Gareth Rees']
  gem.email         = ['gareth@garethrees.co.uk']
  gem.description   = %q{Parses useful information from the HTML response of an NCBI Blast}
  gem.summary       = %q{Parses useful information from the HTML response of an NCBI Blast}
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'nokogiri'

  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'turn'
  gem.add_development_dependency 'rake'
end