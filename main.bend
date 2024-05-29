# Collatz conjecture search in Bend
#Author - Elijah Bare

search_until = 1000000

def collatz(n, count):
  if n == 1:
    return count + 1
  else:
    if n % 2 == 0:
      return collatz(n / 2, count + 1)
    else:
      return collatz(3*n + 1, count + 1)


def loop(highscore, high_start_val, i):
  iters = collatz(i, 0)
  if i < search_until:
    if iters > highscore:
      return loop(iters, i, i+1)
    else:
      return loop(highscore, high_start_val, i+1)
  else:
    return [highscore, high_start_val, i+1]


def main():
  return loop(0,0,1) #start with 0 as best scores
