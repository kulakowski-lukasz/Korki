#Task description can be found here: https://pastebin.com/nMRAZFjG?

digits = 1000000

#given integer

#Task - write the value of the smallest palindrome larger than K to output. Numbers are always displayed without leading zeros
#the first line contains integer t, the number of test cases
#integers K are given in the next t lines

turns = int(input("For how many numbers you'd like to search palindrome?: "))
input_list = []
for i in range(1,turns+1):
    input_list.append(int(input(f"Insert number {i}: ")))

for j in input_list:
    next = j
    found = False
    while not found:
        next += 1
        found = str(next) == str(next)[::-1]
    print(f"Palindrome for {j} found at {next}")