class UserInput
    require_relative 'process_request'

    attr_accessor :actnum, :lat, :lng, :file

    def self.getRequestByAccount(actnum)
        ProcessRequest.getAccountList(actnum)
    end

    def self.getRequestByLatLng(lat, lng)
        ProcessRequest.getAreatList(lat, lng)
    end

    def self.getCSVFile(file)
       csvFile = ProcessFile.new
       csvFile.loadCSV(file)
    end

    def getActNameNum()
        puts 'Now you can enter a account number or name from the file you uploaded'
        puts 'Enter account name or number'
        gets.chomp
    end

end