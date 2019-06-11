class ProcessFile
    require 'csv'
    require 'json'

    def self.processResponse(response)
        new_request = ProcessFile.new
        new_request.toCSV(response)
    end

    def toCSV(response)
        CSV.open("files/file.csv", 'w') do |csv|
            JSON.parse(response).each do |row| #open json to parse
                csv << row.values #write value to file
              end
        end
    end

end
