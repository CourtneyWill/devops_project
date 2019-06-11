class UserInput
    require_relative 'process_request'

    attr_accessor :actnum

    def self.getRequestByAccount(actnum)
        ProcessRequest.getAccountList(actnum)
    end

end