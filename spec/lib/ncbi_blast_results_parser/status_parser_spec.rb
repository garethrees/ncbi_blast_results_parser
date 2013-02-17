require_relative '../../spec_helper'

describe NCBIBlastResultsParser::StatusParser do

  # Parser Setup
  let(:status_parser) { NCBIBlastResultsParser::StatusParser.new }
  let(:parser)        { Nokogiri::HTML::SAX::Parser.new(status_parser) }

  # Status Responses
  let(:ready)   { File.read(File.expand_path('../../fixtures/ready_response.html', File.dirname(__FILE__))) }
  let(:waiting) { File.read(File.expand_path('../../fixtures/waiting_response.html', File.dirname(__FILE__))) }
  let(:unknown) { File.read(File.expand_path('../../fixtures/unknown_response.html', File.dirname(__FILE__))) }

  it 'parses a ready response' do
    parser.parse(ready)
    status_parser.status.must_equal 'READY'
  end

  it 'parses a waiting response' do
    parser.parse(waiting)
    status_parser.status.must_equal 'WAITING'
  end

  it 'parses an unknown response' do
    parser.parse(unknown)
    status_parser.status.must_equal 'UNKNOWN'
  end

end