class ProcessRequest
    require 'net/http'
    require_relative 'process_file'

    BASE_URL = "https://seeclickfix.com/open311/v2/"

    def self.getAccountList(act)
       response = Net::HTTP.get(URI(BASE_URL+"#{act}"+"/requests.json"))
       ProcessFile.processResponse(response)
    end

    def self.getAreatList(lat, lng)
        uri = URI(BASE_URL+'requests.json')
        params = {:lat => lat, :long => lng}
        uri.query = URI.encode_www_form(params)
        response = Net::HTTP.get_response(uri)
        ProcessFile.processResponse(response)
     end

end
