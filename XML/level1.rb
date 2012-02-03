require 'open-uri'
require 'pp'
require 'rexml/document'
open('http://mydrinkon.com/wp-content/themes/mydrinkon/lon-feed.php') do |f|
        doc=REXML::Document.new(f)
        @arr=[]
        main=doc.root.length-1
        #puts main
        #exit
        main.times do |m|
                @hashing={}
                sub=doc.root.elements[m+1].length-1
                if !doc.root.elements[1].elements[m+1].length.nil?
                        sub.times do |s|
                                @hashing[doc.root.elements[m+1].elements[s+1].name]=doc.root.elements[m+1].elements[s+1].text
                        end
                else
                end
                @arr<<@hashing
        end
                puts @arr.inspect
end

