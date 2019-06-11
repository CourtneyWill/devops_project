#!usr/bin/env ruby

require_relative './src/classes/user_input'

puts '-' * 15
puts '| Open 311 API |'
puts '-' * 15

puts 'Press 1. To get a list of request by account number'
puts 'Press 2. To get a list of request by lat/lng coordinates'
puts 'Press 3. To upload csv file with account number and names'
puts 'Press 4. To quit'
print '> '

input = gets.chomp

account = UserInput.new

case input.to_i
    when 1
        puts 'Enter the account number account number: '
        account.actnum = gets.chomp
        UserInput.getRequestByAccount(account.actnum)
    when 2
        puts 'Enter the lattitude coordinates: '
        account.lat = gets.chomp
        puts 'Enter the longitude coordinates: '
        account.lng = gets.chomp
        UserInput.getRequestByLatLng(account.lat, account.lng)
    when 3
        puts 'Load csv file with account name and numbers (Enter path to file including file name)'
        account.file = gets.chomp
        data = UserInput.getCSVFile(account.file)
        str = account.getActNameNum
        data.map do |k,v|
            if k.include?(str)
                UserInput.getRequestByAccount(k)
            elsif v.include?(str)
                UserInput.getRequestByAccount(k)
            else
                 puts 'No match'
            end
        end
        
    when 4
        abort("Have a great day!")
        
end

# 