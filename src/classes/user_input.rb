class UserInput
    require_relative 'process_request'

    attr_accessor :actnum, :lat, :lng

    def self.getRequestByAccount(actnum)
        ProcessRequest.getAccountList(actnum)
    end

    def self.getRequestByLatLng(lat, lng)
        ProcessRequest.getAreatList(lat, lng)
    end

end