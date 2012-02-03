require 'open-uri'
require 'pp'
require 'rexml/document'
open('http://www.familyfinds.com/all/deals.xml') do |f|
        doc1=REXML::Document.new(f)
         main_arr2=[]
                hashing={}
                h={}
                arr2=[]
                arr5=[]
                arr6=[]
                arr7=[]
                main = doc1.root.length
                main.times do |main|
                                arr2 << doc1.root.elements[main+1]
                end
                v = arr2.compact.length
                for main1 in 0..v
                        a = main1+1
                        if !doc1.root.elements[a].nil? && !doc1.root.elements[a].text.nil?
                                h = {}
                                h2={}
                                min= doc1.root.elements[a].length
                                min.times do |min|
                                        if !doc1.root.elements[a].elements[min+1].nil?
                                                arr7 << doc1.root.elements[a].elements[min+1]
                                        end
                                end
                                j = arr7.length
                                j.times do |j|
                                        b = j+1
                                        if !doc1.root.elements[a].elements[b].nil? && !doc1.root.elements[a].elements[b].text.nil?
                                                h[doc1.root.elements[a].elements[b].name]= doc1.root.elements[a].elements[b].text

                                                if doc1.root.elements[a].elements[b].length > 1
                                                        arr4=[]
                                                        c=doc1.root.elements[a].elements[b].length
                                                        c.times do |c|
                                                                if !doc1.root.elements[a].elements[b].elements[c+1].nil?
                                                                        arr4 << doc1.root.elements[a].elements[b].elements[c+1]
                                                                end
                                                        end
                                                        d = arr4.length
                                                        d.times do |d|
                                                                h2[doc1.root.elements[a].elements[b].elements[d+1].name]=doc1.root.elements[a].elements[b].elements[d+1].text
                                                          end
                                                  end
                                       end
                              end
                                      main_arr2 << h.merge!(h2)
                        end
                end
        puts main_arr2.inspect
end

