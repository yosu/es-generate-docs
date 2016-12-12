#!/usr/bin/env ruby
# encoding: utf-8
require 'bundler/setup'
require 'faker'
require 'json'

n = ARGV.shift.to_i

if n < 1
  puts "Usage: #{$PROGRAM_NAME} <count>"
  exit 1
end

1.upto(n) do |id|
  puts JSON.generate({
    index: {
      _id: id
    }
  })

  puts JSON.generate({
    title: Faker::Book.title,
    author: Faker::Book.author,
    publisher: Faker::Book.publisher,
    genre: Faker::Book.genre,
    rating: Faker::Number.between(1, 5),
    release_date: Faker::Date.backward(60)
  })
end
