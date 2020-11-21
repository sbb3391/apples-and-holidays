
[1mFrom:[0m /mnt/c/Users/sbb33/development/code/mod1/apples-and-holidays/lib/holiday.rb:82 Object#all_holidays_with_bbq:

    [1;34m72[0m: [32mdef[0m [1;34mall_holidays_with_bbq[0m(holiday_hash)
    [1;34m73[0m:   [1;34m# return an array of holiday names (as symbols) where supply lists[0m
    [1;34m74[0m:   [1;34m# include the string "BBQ"[0m
    [1;34m75[0m: 
    [1;34m76[0m:   holiday_hash.each [32mdo[0m |season, holiday_hash|
    [1;34m77[0m:     new_array = []
    [1;34m78[0m:       holiday_hash.collect [32mdo[0m |holiday, value|
    [1;34m79[0m:         [32mif[0m value.include?([31m[1;31m"[0m[31mBBQ[1;31m"[0m[31m[0m)
    [1;34m80[0m:         [32mthen[0m new_array << holiday
    [1;34m81[0m:      [32mend[0m
 => [1;34m82[0m:      binding.pry
    [1;34m83[0m:     [32mend[0m
    [1;34m84[0m:     
    [1;34m85[0m: [32mend[0m
    [1;34m86[0m: new_array
    [1;34m87[0m: [32mend[0m

