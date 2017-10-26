require 'rspec'
require 'Problems/problem13'

describe '.exec_time' do

  before :all do
    @add_func = -> { 10 + 5 }
    @add_multiple_func = lambda do
      n = 10 + 5
      n += 5
      n += 5
      n += 5
      n += 5
      n += 5
      n += 5
      n += 5
      n += 5
      n += 5
    end
    @divide_func = -> { 10 / 3 }
  end

  it 'takes more time to execute a task 10 times' do
    exec_time(@add_func) # just do preparation (dont measure first time)

    time1 = exec_time(@add_func)
    time2 = exec_time(@add_multiple_func)

    expect(time1 < time2).to be_truthy
  end

  it 'division takes more time than addition' do
    exec_time(@add_func) # just do preparation (dont measure first time)

    time1 = exec_time(@add_func)
    time2 = exec_time(@divide_func)

    expect(time1 < time2).to be_truthy
  end

end