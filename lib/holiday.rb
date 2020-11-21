require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash.each do |season, holiday_hash|
  if season == :winter
  holiday_hash.each do |holiday, value|
    value << supply
  end
  end
end
end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
 

end

def all_winter_holiday_supplies(holiday_hash)
  new_array = []
  holiday_hash.each do |season, holiday_hash|
    if season == :winter
      holiday_hash.each do |holiday, value|
         new_array << value
      end    
    end
   end
new_array = new_array.join()
new_array
binding.pry
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

holiday_hash.each do |season, holiday_hash|
  season = season.to_s
  season = season.capitalize!
  puts "#{season}:"
    holiday_hash.each do |holiday, value|
      holiday = holiday.to_s
      holiday = holiday.split("_")
      #capitalize each word of holidays
      new_array = []
      holiday.each do |i|
        i = i.capitalize!
        new_array << i
      end
    
      new_array = new_array.join(" ")
      value = value.join(", ")
      puts "  #{new_array}: #{value}"
    end
end


end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.each do |season, holiday_hash|
      holiday_hash.collect do |holiday, value|
        if value.include?("BBQ")
        then new_array << holiday
     end
    end
  end
new_array
end

hash1 = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

