require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do

  it("return values in array for range 1..2") do
    expect(2.ping_pong()).to(eq([1, 2]))
  end
  it("pushes elements divisible by three into array as ping") do
   expect(3.ping_pong()).to(eq([1, 2, "ping"]))
  end
  it("pushes elements divisible by five into array as pong") do
   expect(10.ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong"]))
  end
  it("is true for divisible by fifteen") do
   expect(15.ping_pong()).to(eq(pingGlobal[14]))
  end
end
