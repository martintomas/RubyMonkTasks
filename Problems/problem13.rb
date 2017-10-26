# Problem Statement
# You are given some code in the form of lambdas.
# Measure and return the time taken to execute that code.
# You may use Time.now to get the current time.

def exec_time(proc)
  t = Time.now
  proc.call
  Time.now - t
end