def findWays(n): 
    if n <= 1:
        return n
    result = 0 
    for i in range (1, 3): 
        result += findWays(n - i) 
    return result 

def numWays(s): 
    return findWays(s + 1) 


print(numWays(4)) 


