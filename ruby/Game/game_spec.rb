require_relative 'game'

describe WordGame do
  let(:word_game) { WordGame.new }

  it "turns a string into an array" do
    expect(word_game.word_to_guess('unicorn')).to be_an_instance_of(Array)
  end

  it "makes a new array with the word hidden" do
    expect(word_game.secret_word).to be_an_instance_of(Array).to include("_")
  end

  it "checks if you guessed correctly" do 
    expect(word_game.check_guess).should be_kind_of(Integer) 
  end

  it "updates the hidden word if you guessed correctly" do
    expect(word_game.update_word).to be_an_instance_of(Array).to include([a-z])
  end

  it "checks to see if you won" do
    expect(word_game.check_if_won).should be_kind_of(Integer) 
  end

  it "checks to see if you lost" do
    expect(word_game.check_if_lost).should be_kind_of(Integer) 
  end

end