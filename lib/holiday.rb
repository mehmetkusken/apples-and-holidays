require 'pry'
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies = {
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
end
def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end 
def add_supply_to_winter_holidays(holiday_hash, supply)
	holiday_hash[:winter][:new_years] << supply
	holiday_hash[:winter][:christmas] << supply
end
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end
def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values_at(:christmas, :new_years).join(" ")
end
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  " + "#{holiday}:".gsub("_", " ").split.map(&:capitalize).join(' ') + " #{supplies.join(", ")}"
    end
  end
end
def all_holidays_with_bbq(holiday_hash)
    holidays_with_bbq = []
    holiday_hash.map do |season, supply| 
      supply.each do |holiday, items| 
      if items.include?("BBQ") 
         puts holidays_with_bbq << holiday
    end 
  end 
  end 
  holidays_with_bbq
end
