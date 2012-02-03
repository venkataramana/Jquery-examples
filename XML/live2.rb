require 'open-uri'
require 'pp'
require 'rexml/document'

open('http://api.localoffernetwork.com/api/markets.xml?auth_key=fb00158ddcd5de74dfdd465d6be14794') do |f|
        doc= REXML::Document.new(f)
        main_arr=[]
        arr1=[]
        main2=doc.root.length-1
        main2.times do |main2|
                if !doc.root.elements[main2+1].nil?
                        arr1 << doc.root.elements[main2+1].elements[1].text
                end
         end
        arr1.each do |country|
                url = "http://api.localoffernetwork.com/api/offers.xml?market=#{country}&auth_key=fb00158ddcd5de74dfdd465d6be14794"
                open(url) do |x|
                        doc1=REXML::Document.new(x)
                        main_arr2=[]
                        hashing={}
                        h={}
                        arr2=[]
                        arr5=[]
                        arr6=[]
                        arr7=[]
                        main = doc1.root.length-1

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
                                                                                       e = doc1.root.elements[a].elements[b].elements[d+1].length
                                                                                        e.times do |e|
                                                                                                arr5 << doc1.root.elements[a].elements[b].elements[d+1].elements[e+1]
                                                                                        end
                                                                                        g = arr5.compact.length
                                                                                        g.times do |g|
                                                                                              if !doc1.root.elements[a].elements[b].elements[d+1].elements[g+1].nil?
                                                                                                 h2[doc1.root.elements[a].elements[b].elements[d+1].elements[g+1].name]=doc1.root.elements[a].elements[b].elements[d+1].elements[g+1].text
                                                                                             end
                                                                                        end
                                                                          end
                                                                  end

                                                          end

                                              end
                                              main_arr2 << h.merge!(h2)
                                                puts main_arr2.inspect
                                                exit
                                end
                        end
                        main_arr << main_arr2
              end

        end
        puts main_arr.flatten.inspect
end

