import re

str = "1001tf11flb10001" # строка
regular = "1[0]+1" # условие поиска
result = re.finditer(regular, str) # поиск условия и присваивание

for match in result: # вывод найденных подстрок
    print (match.group(0))