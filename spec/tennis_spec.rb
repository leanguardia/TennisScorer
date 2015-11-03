require "tennis"

describe Tennis do 
	
	before :each do
		@game = Tennis.new
	end

	it "should begin a game with score '0 - 0'" do
		expect(@game.scorer).to eq '0 - 0'
	end

	it "player1 scores, scorer should be '15 - 0'" do
		@game.p1scores
		expect(@game.scorer).to eq '15 - 0'
	end

	it "player2 scores, scorer should be '0 - 15'" do
		@game.p2scores
		expect(@game.scorer).to eq '0 - 15'
	end	

	it "player 1 scores twice" do
		@game.p1scores
		@game.p1scores
		expect(@game.scorer).to eq '30 - 0'
	end

	it "player 2 scores twice" do
		@game.p2scores
		@game.p2scores
		expect(@game.scorer).to eq '0 - 30'
	end

	it "player 1 scores 3x" do
		@game.p1scores
		@game.p1scores
		@game.p1scores
		expect(@game.scorer).to eq '40 - 0'
	end

	it "player 2 scores 3x" do
		@game.p2scores
		@game.p2scores
		@game.p2scores
		expect(@game.scorer).to eq '0 - 40'
	end

	it "player 1 scores twice, player 2 scores 3x" do
		@game.p1scores
		@game.p1scores
		@game.p2scores
		@game.p2scores
		@game.p2scores
		expect(@game.scorer).to eq '30 - 40'
	end

	it "p1 and p2 scored 3 times, should return 'deuce'" do
		@game.p1scores 
		@game.p1scores 
		@game.p1scores 
		@game.p2scores 
		@game.p2scores 
		@game.p2scores 
		expect(@game.scorer).to eq 'deuce'
	end

	it "player 1 scores 4x and wins" do
		@game.p1scores
		@game.p1scores
		@game.p1scores
		@game.p1scores
		expect(@game.scorer).to eq 'player 1 won'
	end

	it "player 2 scores 4x and wins" do
		@game.p2scores
		@game.p2scores
		@game.p2scores
		@game.p2scores
		expect(@game.scorer).to eq 'player 2 won'
	end

	it "p1 scored x4, p2 scored x3" do
		@game.p1scores
		@game.p1scores
		@game.p1scores
		@game.p2scores
		@game.p2scores
		@game.p2scores
		@game.p1scores
		expect(@game.scorer).to eq 'player 1 has advantage'
	end

	it "p2 scored x4, p1 scored x3" do
		@game.p2scores
		@game.p2scores
		@game.p2scores
		@game.p1scores
		@game.p1scores
		@game.p1scores
		@game.p2scores
		expect(@game.scorer).to eq 'player 2 has advantage'
	end

	it "p1 scored x4, p2 scored x4" do
		@game.p1scores
		@game.p2scores
		@game.p1scores
		@game.p2scores
		@game.p1scores
		@game.p2scores #40 40
		@game.p1scores
		@game.p2scores
		expect(@game.scorer).to eq 'deuce'
	end

	it "p1 scored 6x, p2 scored 4x" do
		@game.p1scores #15 0
		@game.p2scores
		@game.p1scores
		@game.p2scores
		@game.p1scores # 40 30
		@game.p2scores 
		@game.p1scores 
		@game.p2scores 
		@game.p1scores 
		@game.p1scores
		@game.show
		expect(@game.scorer).to eq 'player 1 won'
	end
end
