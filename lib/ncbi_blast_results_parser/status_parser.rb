module NCBIBlastResultsParser
  class StatusParser < Nokogiri::XML::SAX::Document

    attr_reader :status

    def comment(string)
      parse_status(string) if string.strip.include? 'Status='
    end

    def parse_status(string)
      line    = string[/((?:Status=.*?$){1})/]
      @status = line.split('=').last
    end
  end
end