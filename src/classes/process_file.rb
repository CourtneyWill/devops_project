class ProcessFile
    require 'csv'
    require 'json'

    def self.processResponse(response)
        new_request = ProcessFile.new
        new_request.toCSV(response)
    end

    def toCSV(response)
        data = JSON.parse(response)
        csv = CSV.generate do |c|
            c << data
        end
        puts csv
    end

    def loadCSV(file)
        CSV.read(file)
    end

end
