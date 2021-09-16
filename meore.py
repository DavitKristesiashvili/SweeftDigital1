def disCoins(val):
    coin = 0
    dif = []
    global result 
    coins = [1, 5, 10, 20, 50] 
    if val == 0: 
        return result 
    else: 
        for i in range(len(coins)): 
            dif += [abs((val-coins[i]))] #vipovit sxvaobas dasashlel xurdasa da arsebul monetebs shoris 
        coin = val - min(dif)  #dasashlel xurdas gamovaklebt minimalur sxvaobas, ritic vipovit dasashlel 
                               #xurdaze nakleb, maqsimaluri girebulebis monetas. 
        result+=1 #da davtvlit raodenobas 
        return disCoins(val-coin)  #rekursiit gamovidzaxebt imave funqcias, ukve napovni monetis gamoklebit 
result=0
print(disCoins(70)) 