class Tennis

	def initialize
		@p1 = 0
		@p2 = 0
		@advp1 = false
		@advp2 = false
	end

	def scorer
		if @advp1
			return 'player 1 has advantage'
		elsif @advp2
			return 'player 2 has advantage'
		elsif @p1==40 and @p2==40
			return 'deuce'
		elsif @p1==50
			return 'player 1 won'
		elsif @p2==50
			return 'player 2 won'
		end
		@p1.to_s+' - '+@p2.to_s
	end

	def p1scores
		if @p1==0
			@p1 = 15
		elsif @p1==15
			@p1=30
		elsif @p1==30
			@p1=40
		elsif @p1==40 and @p2<=30
			@p1=50
		elsif @p1==40 and !@advp1
			@advp1 = true
			if @advp1 and @advp2
				@advp1=false
				@advp2=false
			end
		else
			@p1=50
			@advp1=false
		end
	end

	def p2scores
		if @p2==0
			@p2 = 15
		elsif @p2==15
			@p2=30
		elsif @p2==30
			@p2=40
		elsif @p2==40 and @p1<=30
			@p2=50
		elsif @p2==40 and !@advp2
			@advp2=true
			if @advp1 and @advp2
				@advp1=false
				@advp2=false
			end
		else
			@p2=50
			@advp2=false
		end
	end

	def show
		puts @p1 
		puts @advp1
		puts @p2
		puts @advp2
	end

	def reset
		@p1 = 0
		@p2 = 0
		@advp1 = false
		@advp2 = false
	end
end