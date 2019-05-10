
def get_first_name_of_season_winner(data, season)
winner = ""
  if data.include?(season)
    data[season].each do |lucky|
      if lucky["status"] == "Winner"
         winner = lucky["name"].split(" ")[0]
end
  end
end
winner
end



def get_contestant_name(data, occupation)
  data.each do |season, stuff|
    data[season].each do |contestants|
      if contestants["occupation"] == occupation
        return contestants["name"]
        end
      end
    end
  end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |ss, stuff|
    data[ss].each do |contestants|
      if contestants["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |ss, stuff|
    data[ss].each do |contestants|
      if contestants["hometown"] == hometown
        return contestants["occupation"]
end
end
end
end

def get_average_age_for_season(data, season)
  all_the_ages = []
  data[season].each do |contestants|
contestants.each do |k,v|
  if k == "age"
    all_the_ages<< v.to_i.floor
end
end
end
return (all_the_ages.inject{|sum,n| sum + n}.to_f/all_the_ages.length).round

end
