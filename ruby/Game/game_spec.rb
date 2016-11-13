require_relative 'game'

describe WordGame do
  let(:WordGame) { WordGame.new }

  it "turns a string into an array" do
    expect(WordGame.word_to_guess).to be_an_instance_of(Array)
  end

  it "makes a new array with the word hidden" do
    expect(WordGame.secret_word).to be_an_instance_of(Array).to include("_")
  end

  it "checks if you guessed correctly"  
    expect(WordGame.check_guess).should be_kind_of(Integer) 
  end

  it "updates the hidden word if you guessed correctly" do
    expect(WordGame.update_word).to be_an_instance_of(Array)
  end

  it "checks to see if you won" do
    expect(WordGame.check_if_won).should be_kind_of(Integer) 
  end

  it "checks to see if you lost" do
    expect(WordGame.check_if_lost).should be_kind_of(Integer) 
  end

end