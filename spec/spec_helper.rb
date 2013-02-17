require_relative '../lib/ncbi_blast_results_parser'

require 'minitest/autorun'
require 'turn'

Turn.config do |c|
  c.format = :dot
end