require_relative 'game'

describe WordGame do
  let(:word_game) { WordGame.new }

  it "turns a string into an array" do
    expect(word_game.word_to_guess("unicorn")).to be_an_instance_of(Array)
  end

  it "makes a new array with the word hidden" do
    expect(word_game.secret_word).to be_an_instance_of(Array)
  end

  it "checks if you guessed correctly" do 
    expect(word_game.check_guess("u")).to be_a(Integer) 
  end

  it "updates the hidden word if you guessed correctly" do
    expect(word_game.update_word("u")).to be_an_instance_of(Array)
  end

  it "checks to see if you won" do
    expect(word_game.check_if_won).to be_a(Integer) 
  end

  it "checks to see if you lost" do
    expect(word_game.check_if_lost).to be_a(Integer) 
  end

end