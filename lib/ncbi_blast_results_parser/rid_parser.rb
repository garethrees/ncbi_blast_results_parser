module NCBIBlastResultsParser
  class RIDParser < Nokogiri::XML::SAX::Document

    attr_reader :rid, :wait

    def comment(string)
      parse_rid(string) if string.strip.include? 'RID ='
      parse_wait_time(string) if string.strip.include? 'RTOE ='
    end

    def parse_rid(string)
      line = string[/((?:RID =.*?$){1})/]
      @rid = line.split.last
    end

    def parse_wait_time(string)
      line  = string[/((?:RTOE =.*?$){1})/]
      @wait = line.split.last.to_i
    end

  end
end