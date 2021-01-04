require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:brownie) {Dessert.new("brownie", 50, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq('brownie')
    end
    it "sets a quantity" do 
      expect(brownie.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients.empty?).to eq(true)
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("brownie", "50", "Sydney") }.to raise_error ArgumentError
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to_not include("brown")
      brownie.add_ingredient('brown')
      expect(brownie.ingredients).to include("brown")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      brownie.add_ingredient('brown')
      brownie.add_ingredient('ie')
      brownie.add_ingredient('more brown')
      brownie.add_ingredient('even more brown')
      brownie.add_ingredient('more brown for good measure')
      brownie.mix!
      expect(brownie.ingredients).to_not eq(['brown', 'ie', 'more brown', 'even more brown for good measure'])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(1)
      expect(brownie.quantity).to eq(49)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{ brownie.eat(51) }.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
     brownie.serve
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
   
    end
  end
end
