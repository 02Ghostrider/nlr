require_relative "../calculator"

describe "add" do
  it "adds 0 and 0" do
    expect(add(0,0)).to eq(0)
  end

  it "adds 2 and 2" do
    expect(add(2,2)).to eq(4)
  end

  it "adds positive numbers" do
    expect(add(2,6)).to eq(8)
  end

  it "adds positive and negative numbers" do
  	expect(add(-2,6)).to eq(4)
  end

  it "adds negative numbers" do
  	expect(add(-2,-6)).to eq(-8)
  end
end

describe "subtract" do
  it "subtracts two positive numbers" do
    expect(subtract(10,4)).to eq(6)
  end

  it "subtracts a positive number from a negative number" do
  	expect(subtract(-4, 5)).to eq(-9)
  end

  it "subtracts a negative number from a positive number" do
  	expect(subtract(4, -5)).to eq(9)
  end

  it "subtracts two negative numbers" do
  	expect(subtract(-5, -6)).to eq(1)
  end
end

describe "multiply2" do

  it "multiplies two numbers: 1x1=1" do
    expect(multiply2(1,1)).to eq(1)
  end

  it "multiplies two differing numbers: 2x3=6" do
    expect(multiply2(2,3)).to eq(6)
  end

  it "multiplies two negative numbers: -1x(-4)=4" do
  	expect(multiply2(-1,-4)).to eq(4)
  end

  it "multiplies a positive and a negative number: -2x3=(-6)" do
  	expect(multiply2(-2, 3)).to eq(-6)
  end
end

describe "divide2" do
	it "divides a positive number by a non-zero, positive number: 6/2 = 3" do
		expect(divide2(6, 2)).to eq(3)
	end

	it "divides a negative number by a non-zero, positive number: -6/2 = -3" do
		expect(divide2(-6, 2)).to eq(-3)
	end

	it "divides a positive number by a non-zero, negative number: 6/(-2) = -3" do
		expect(divide2(6, -2)).to eq(-3)
	end

	it "divides a negative number ba a non-zero, negative number: (-6)/(-2) = 3" do
		expect(divide2(-6, -2)).to eq(3)
	end

	it "returns a string 'undefined' when attempting to divide by zero" do
		expect(divide2(6, 0)).to eq('undefined')
	end
end
