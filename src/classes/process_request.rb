class ProcessRequest
    require 'net/http'
    require_relative 'process_file'

    BASE_URL = "https://seeclickfix.com/open311/v2/"

    def self.getAccountList(act)
       response = Net::HTTP.get(URI(BASE_URL+"#{act}"+"/requests.json"))
       ProcessFile.processResponse(response)
    end

end
