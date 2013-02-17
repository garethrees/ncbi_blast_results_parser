require_relative '../spec_helper'

describe NCBIBlastResultsParser do

  # Parser Setup
  let(:parser) { NCBIBlastResultsParser }

  # Responses
  let(:rid_response)   { File.read(File.expand_path('../fixtures/rid_response.html', File.dirname(__FILE__))) }
  let(:ready_response) { File.read(File.expand_path('../fixtures/ready_response.html', File.dirname(__FILE__))) }

  it 'parses a request id' do
    parser.rid(rid_response).must_equal 'BUCSAKD101R'
  end

  it 'parses a suggested wait time' do
    parser.wait(rid_response).must_equal 17
  end

  it 'parses a status' do
    parser.status(ready_response).must_equal 'READY'
  end

end