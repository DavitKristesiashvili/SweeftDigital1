def brackets(str): 
    stack=[]
    for i in range(len(str)): 
        if len(stack)==0: 
            stack.append(str[i])
            continue
        if str[i] == '(': 
            stack.append(str[i])
        if str[i] == ')' and stack[0] == '(': 
            stack.pop()
    if len(stack)==0: 
        return True
    else: 
        return False

print(brackets("()()(())"))
