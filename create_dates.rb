require 'date'

d = Date.new(2016,1,1)


day = d.day
month = d.month
year = d.year
day_of_week = d.wday
full = year.to_s+"-"+month.to_s+"-"+day.to_s
week_of_year = d.strftime('%W')

d = Date.new(2016,1,4)
day = d.day
month = d.month
year = d.year
day_of_week = d.wday
full = year.to_s+"-"+month.to_s+"-"+day.to_s
week_of_year = d.strftime('%W')

week_of_year = d.strftime('%W')


out_file = File.new("dates_insert.sql", "w")

(Date.new(2016, 01, 01)..Date.new(2020, 01, 30)).each do |d|
  	day = d.day
	month = d.month
	year = d.year
	day_of_week = d.wday
	full = year.to_s+"-"+month.to_s+"-"+day.to_s
	week_of_year = d.strftime('%W')

	sql_command = " INSERT INTO DAYS (day, month, year, day_of_week, full_date) VALUES ("+day+","+month+","+year+","+day_of_week+","+full+");"
	out_file.puts(sql_command)

end

out_file.close


