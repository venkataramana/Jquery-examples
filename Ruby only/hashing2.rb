#s=[{"c"=>3,:b=>4,:a=>7},{"c"=>8,:b=>5,:a=>9}]
s=[{:xxx=>{id: 1, category_name: "Mens", created_at: "2011-08-30 11:35:17", updated_at: "2011-08-30 11:35:17"}}, {:xxx=>{id: 2, category_name: "Women", created_at: "2011-08-30 11:35:24", updated_at: "2011-08-30 11:35:24"}}]
s.each do |h|
        puts h[:id]
end

