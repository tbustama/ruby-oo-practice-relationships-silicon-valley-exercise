require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
s1 = Startup.new("taylor", "adam", "derp.com")
s2 = Startup.new("dustin", "adam", "dustin.com")
s3 = Startup.new("adam", "ix", "adam.com")
s4 = Startup.new("sid", "wilson", "wilson.com")
s5 = Startup.new("carl", "alex", "carl.com")
v1 = VentureCapitalist.new("Straton Oakmont", 1000000001)
v2 = VentureCapitalist.new("Star", 10004356)
v3 = VentureCapitalist.new("Moon", 32452352)
v4 = VentureCapitalist.new("Sun", 112312434)
v5 = VentureCapitalist.new("Mars", 1358749856349)
f1 = FundingRound.new(s1, v1, "Series A", 40000)
f2 = FundingRound.new(s1, v1, "Series B", 2354543)
f3 = FundingRound.new(s1, v1, "Series C", 3254255)
f4 = FundingRound.new(s4, v1, "Series A", 435466)
f5 = FundingRound.new(s5, v2, "Series A", 8346789)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line