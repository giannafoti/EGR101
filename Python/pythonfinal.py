for line in open('input.txt'):
    line = line.strip()
    parts = line.split(',')

    parts = line.split('+')
    print(parts[0] + ' is ' + parts[1]+ ' years old.')
