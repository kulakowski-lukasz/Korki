'''
Zadanie:
Otrzymasz w programie:
- W pierwszej linijce wejścia znajduje się liczba naturalna C, 1 ≤ C ≤ 50, oznaczająca ilość zestawów danych.
- W kolejnych C wierszach wejścia znajdują się zestawy danych. 
- Każdy zestaw składa się z niepustego wyrazu złożonego z samych dużych liter. Długość wyrazu nie przekracza 200 znaków.


Chcemy otrzymać:
Dla każdego zestawu danych, dla zadanego wyrazu, na wyjściu powinna znaleźć się jego skrócona wersja.


Przykład

Dla danych wejściowych:
4
OPSS
ABCDEF
ABBCCCDDDDEEEEEFGGHIIJKKKL
AAAAAAAAAABBBBBBBBBBBBBBBB


prawidłowym rozwiązaniem jest:
OPSS
ABCDEF
ABBC3D4E5FGGHIIJK3L
A10B16
'''


#Get user input:
user_input = []
output = []


def check_length(str, length):
    if len(str) > length:
        raise ValueError()

c = int(input("Provide number of words: "))
for i in range(1,c+1):
    while True:
        try:
            word = input(f"Provide word {i}: ").upper() 
            check_length(word, 200)
        except:
            print("Word can contain only 200 characters") 
        else:
            user_input.append(word+'*')
            break

#iterating over every word from user_input
for curr_word in user_input:
    count = 1 
    output_word = ""
    #Iterating over every char of the curr_word (current word), but finishing at position last -1
    #last char is '*' artificially added to the word, as im always comparing current char to next chat
    #it to avoid exceeding indexes
    for curr_char in range(len(curr_word)-1):
        if curr_word[curr_char] == curr_word[curr_char+1]: count +=1
        else:
            if count < 3:
                output_word += f"{curr_word[curr_char]}"*count
                count=1
            else:
                output_word += f"{curr_word[curr_char]}{count}"
                count=1
    output.append(output_word)

print(output)


