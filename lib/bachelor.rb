def get_first_name_of_season_winner(data, season)
  data.each do |season_key, contestants|
    if season_key == season
      contestants.each do |contestant|
        contestant.each do |info, value|
          if value == "Winner"
            name = contestant["name"]
            name_array = name.split(" ")
            return name_array[0]
          end
        end
      end 
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_key, contestants|
    contestants.each do |contestant|
      contestant.each do |info, value|
        if value == occupation 
          return contestant["name"]
        end
      end
    end
  end 
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season_key, contestants|
    contestants.each do |contestant|
      contestant.each do |info, value|
        if value == hometown
          hometown_counter += 1
        end
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season_key, contestants|
    contestants.each do |contestant|
      contestant.each do |info, value|
        if value == hometown
          
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data.each do |season_key, contestants|
    if season_key == season
      contestants.each do |contestant|
        contestant.each do |info, value|
          if info == "age"
            age_array << value.to_i
          end
          
        end
      end
    end
  end
  average_age = age_array.inject { |sum, element| (sum + element) }.to_f / age_array.size
  average_age.round
end
