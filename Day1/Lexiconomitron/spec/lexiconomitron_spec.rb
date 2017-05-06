require_relative '../lib/lexiconomitron.rb'

describe Lexiconomitron do 
	describe "#eat_t" do
		it "removes every letter t from the input" do
		  @lexi = Lexiconomitron.new
		  expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
		end
	end

	describe "#shazam" do
		it "reverse the letters" do
			@lexi = Lexiconomitron.new
			expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
		end

		it "reverse the letters" do
			@lexi = Lexiconomitron.new
			expect(@lexi.shazam(["This", "is", "test"])).to eq(["sih", "se"])
		end
	end

	describe "#oompa_loompa" do
		it "delete the words with more or 3 letters" do
			@lexi = Lexiconomitron.new
			expect(@lexi.oompa_loompa(["if","you","wanna","be","my","lover"])).to eq(["if","you","be","my"])
		end
	end

end
