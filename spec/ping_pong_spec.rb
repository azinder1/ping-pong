require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong?') do

  it("is an array") do
    expect(3.to_array()).to(eq([1, 2, 3]))
  end
  it("is false for divisible by three or five") do
    expect(8.ping_pong?()).to(eq(FALSE))
  end
  it("is true for divisible by three") do
   expect(6.ping_pong?()).to(eq("ping"))
  end
  it("is true for divisible by five") do
   expect(10.ping_pong?()).to(eq("pong"))
  end
  it("is true for divisible by fifteen") do
   expect(15.ping_pong?()).to(eq("ping-pong"))
  end

end
