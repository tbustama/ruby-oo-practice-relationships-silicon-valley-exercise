class Startup
    attr_accessor :name, :domain
    attr_reader :founder
    @@all = []
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all <<self
    end
    def self.all
        @@all
    end

    def pivot(domain, name)
        self.domain = domain
        self.name = name
    end

    def self.find_by_founder(founder)
        self.all.find{|company| company.founder == founder}
    end

    def self.domains
        self.all.map{|company| company.domain}
    end

    def sign_contract(venture_capitalist, type, amount)
        FundingRound.new(self, venture_capitalist, type, amount.to_f)
    end

    def num_funding_rounds
        self.funding_rounds.length
    end

    def total_funds
        self.funding_rounds.sum{|round| round.investment}
    end

    def investors
        self.funding_rounds.map{|round| round.venture_capitalist}.uniq
    end

    def big_investors
        self.investors.select{|investor| VentureCapitalist.tres_commas_club.include?(investor)}
    end

    def funding_rounds
        FundingRound.all.select{ |round| round.startup == self}
    end

end
