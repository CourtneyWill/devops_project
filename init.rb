#!usr/bin/env ruby

require_relative './src/classes/user_input'

puts '-' * 15
puts '| Open 311 API |'
puts '-' * 15

puts 'To get a list of request please enter an account number'
print '> '

account = UserInput.new
account.actnum = gets.chomp

UserInput.getRequestByAccount(account.actnum)