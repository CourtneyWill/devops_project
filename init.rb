#!usr/bin/env ruby

require_relative './src/classes/user_input'

puts '-' * 15
puts '| Open 311 API |'
puts '-' * 15

puts 'Press 1. To get a list of request by account number'
puts 'Press 2. To get a list of request by lat/lng coordinates'
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
end

# 