require 'open-uri'
require 'pp'
require 'rexml/document'
open('http://localhost:3000/categories.xml') do |f|
        doc=REXML::Document.new(f)
        @arr1=[]
        @hashing={}
        @h={}
        @arr2=[]
        @arr3=[]
        main = doc.root.length-1
        main.times do |main|
                @arr2 << doc.root.elements[main+1]
        end
        v = @arr2.compact.length
        v.times do |main1|
                if !doc.root.elements[main1+1].nil? && !doc.root.elements[main1+1].text.nil?
                        min= doc.root.elements[main1+1].length
                        min.times do |min|
                                if !doc.root.elements[main1+1].elements[min+1].nil? && !doc.root.elements[main1+1].elements[min+1].text.nil?
                                        @h[doc.root.elements[main1+1].elements[min+1].name]= doc.root.elements[main1+1].elements[min+1].text
                                else
                                end
                        end
                        if @h !={}
                                @arr3 << @h
                        end
                else
                end
        end
        puts @arr3.inspect
end

