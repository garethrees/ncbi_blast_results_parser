require 'nokogiri'

Dir[File.dirname(__FILE__) + '/ncbi_blast_results_parser/*.rb'].each do |file|
  require file
end

module NCBIBlastResultsParser

  # Parse a Request ID from an NCBI Blast
  #
  # Returns a String
  def self.rid(response)
    rid_parser = NCBIBlastResultsParser::RIDParser.new
    parser     = Nokogiri::HTML::SAX::Parser.new(rid_parser)
    parser.parse(response)
    rid_parser.rid
  end

  # Parse the suggested wait time for an NCBI Blast
  #
  # Returns an Integer
  def self.wait(response)
    rid_parser = NCBIBlastResultsParser::RIDParser.new
    parser     = Nokogiri::HTML::SAX::Parser.new(rid_parser)
    parser.parse(response)
    rid_parser.wait
  end

  # Parse the status from an NCBI Blast
  #
  # Returns a String
  def self.status(response)
    status_parser = NCBIBlastResultsParser::StatusParser.new
    parser        = Nokogiri::HTML::SAX::Parser.new(status_parser)
    parser.parse(response)
    status_parser.status
  end

end