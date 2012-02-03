require 'open-uri'
require 'pp'
require 'rexml/document'
open('http://localhost:3000/mytweets.xml') do |f|
        doc = REXML::Document.new(f)
        puts doc.root.name
        exit
        @arr=[]
        max=doc.root.elements[1].length-1
        max.times do |m|
                @hsh={}
                if !doc.root.elements[1].elements[m+3].nil?
                        len=doc.root.elements[1].elements[m+3].length-1
                        len.times do |f|
                                @hsh[doc.root.elements[1].elements[m+3].elements[f+1].name]=doc.root.elements[1].elements[m+3].elements[f+1].text
                        end
                        if @hsh !={}
                                @arr << @hsh
                        end
                else
                end
        end
         puts @arr.inspect
end

