#1 varianti 
def palindrome(str): 
    str = str.lower() 
    strLength = int(len(str))
    for i in range (0, strLength//2): 
        if str[i] != str[strLength-1-i]: #ertmanets vadarebt simetriulad dasawyisidan me-i simbolosa da 
                                         #bolodan me-i simboloebs. 
            return False
    return True
print(palindrome("AbcBa")) # unda daabrunos True
print(palindrome("Abcbda")) # unda daabrunos False 
print(palindrome("Abccba")) # unda daabrunos True 


#2 varianti
def checkPalindrome(str):
    str = str.lower()
    return str == str[::-1] 
print(checkPalindrome("AbcBa")) # unda daabrunos True
print(checkPalindrome("Abcbda")) # unda daabrunos False 
print(checkPalindrome("Abccba")) # unda daabrunos True 
