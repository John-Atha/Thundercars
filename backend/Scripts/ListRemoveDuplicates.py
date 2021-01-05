L = ["Rosemead",
"Los Angeles",
"Los Angeles",]

Seen = set({})
L2 = []

for word in L:
    if word in Seen:
        pass
    else:
        L2.append(word)
        Seen.add(word)

print(L2)

