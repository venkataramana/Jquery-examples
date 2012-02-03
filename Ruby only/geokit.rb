include Geokit::Geocoders
res=GoogleGeocoder.reverse_geocode([37.792821,-122.393992])
puts res.full_address

