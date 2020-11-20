class FundingRound
    attr_reader :startup, :venture_capitalist, :type
    @@all = []
    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment.to_f
        @@all <<self
    end
    def self.all
        @@all
    end

    def investment
        if @investment > 0
            @investment
        end
    end
end
