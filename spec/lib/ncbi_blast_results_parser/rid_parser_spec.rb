require_relative '../../spec_helper'

describe NCBIBlastResultsParser::RIDParser do

  # Parser Setup
  let(:rid_parser) { NCBIBlastResultsParser::RIDParser.new }
  let(:parser)     { Nokogiri::HTML::SAX::Parser.new(rid_parser) }

  # RID Response
  let(:response)   { File.read(File.expand_path('../../fixtures/rid_response.html', File.dirname(__FILE__))) }

  it 'parses an RID response' do
    parser.parse(response)
    rid_parser.rid.must_equal 'BUCSAKD101R'
  end

  it 'parses the suggested wait time' do
    parser.parse(response)
    rid_parser.wait.must_equal 17
  end

end