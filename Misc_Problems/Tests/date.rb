require 'date'

@today = Date.today
@today_day = @today.mday.to_s
@today_month = Date::MONTHNAMES[@today.month].to_s
@day = "3"
@month = "January"
@birthday = Date.parse("#{@day}-#{Date::MONTHNAMES.index(@month)}-#{@today.year}")
@difference = (@birthday - @today).to_i
@difference += 365 if @difference < 0

puts @today
puts @today_day
puts @today_month
puts @birthday
puts @difference
