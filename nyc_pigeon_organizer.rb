require 'pp'
def nyc_pigeon_organizer(data)
pigeon = {}

data.each do |color_gender_lives, hash|
  hash.each do |attribute, name|
    name.each do |name|
      if pigeon[name] ==nil
      pigeon[name] = {:color => [], :gender => [], :lives => []}
      end
      if pigeon[name][color_gender_lives] == nil
      pigeon[name][color_gender_lives] =[]
      else
      pigeon[name][color_gender_lives].push(attribute.to_s)
      end
    end
  end
end
pp pigeon

end


pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
}

  
