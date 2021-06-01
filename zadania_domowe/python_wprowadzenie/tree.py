'''
Easiest christmas tree in python ever with only one loop and some basic maths
'''
def holidaybush(char, segments):
    for i in range(1, 2*segments+1, 2):
        spaces=" "*int((2*segments-1-i)/2)
        print(spaces+char*i+spaces)

holidaybush("*",100)