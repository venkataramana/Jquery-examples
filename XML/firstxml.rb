require 'open-uri'
require 'pp'

open('http://www.juretta.com/') do |f|
  # hash with meta information
  pp  f.meta

  #
  pp "Content-Type: " + f.content_type
  pp "last modified" + f.last_modified.to_s

  no = 1
  # print the first three lines
  f.each do |line|
    print "#{no}: #{line}"
    no += 1
    break if no > 4
  end
end

