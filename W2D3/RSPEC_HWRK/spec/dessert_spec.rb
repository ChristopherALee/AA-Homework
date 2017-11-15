require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Chris") }
  let(:icecream) { Dessert.new("icecream", 8, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(icecream.type).to eq("icecream")
    end

    it "sets a quantity" do
      expect(icecream.quantity).to eq(8)
    end

    it "starts ingredients as an empty array" do
      expect(icecream.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("bad", "str", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      icecream.add_ingredient("sprinkles")
      expect(icecream.ingredients).to eq(["sprinkles"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["sprinkles", "syrup", "marshmellows", "caramel"]
      ingredients.each do |ing|
        icecream.add_ingredient(ing)
      end

      expect(icecream.mix!).not_to eql(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      original_quantity = icecream.quantity
      icecream.eat(1)
      expect(icecream.quantity).not_to eql(original_quantity)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{icecream.eat(50)}.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Chris the Great Baker")
      expect(icecream.serve).to eq("Chef Chris the Great Baker has made 8 icecreams!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(icecream)
      icecream.make_more
    end
  end
end
