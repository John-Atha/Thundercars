# given the name of the entity, and its attributes it writes the code for the Constructor, 
# the setters and getters, the equals overriding and the hashing overriding

# FILL DATA ON LINES 63-64
# thanos entered here
def Construct(Entity, AttributesList) :
    out1 = "\t"
    out1 = out1 + "public " + Entity + "("
    for attr in AttributesList:
        out1 = out1 + attr[1]+" "+ attr[0]
        if attr!=AttributesList[-1]:
            out1 = out1 + ", "
        else:
            out1 = out1 + ") {"
    print(out1)


    for attr in AttributesList:
        out = "this." + attr[0] + " = " + attr[0] + ";"
        out = "\t\t" + out
        print(out)
    print("\t}")

def hashOverride(AttributesList):
    print("\t@Override")
    print("\tpublic int hashCode() {")
    print("\t\treturn Objects.hash(")
    for attr in AttributesList:
        out = "\t\t\tthis." + attr
        if attr != AttributesList[-1]:
            out = out +  ","
        else:
            out = out + ");\n\t}"
        print(out)

def EqualsOverride(Entity, AttributesList):
    print("\t@Override")
    print("\tpublic boolean equals(Object o) {")
    print("\t\tif (this == o) return true;")
    print("\t\tif (!(o instanceof " + Entity + ")) return false;")
    print("\t\t" + Entity + " u = (" + Entity + ") o;")
    print("\t\treturn")
    for attr in AttributesList:
        out = "\t\t\tObjects.equals(this." + attr + ", u." + attr +")"
        if attr != AttributesList[-1]:
            out = out + " &&"
        else:
            out = out + ";\n\t}"
        print(out)

def SetGetText(attr):
    res1 = "\tpublic " + attr[1] + " get" + attr[0].capitalize() + "() {\n\t\treturn this."+ attr[0] + ";\n\t}\n"
    res2 = "\tpublic void set" + attr[0].capitalize() + "(" + attr[1]  + " " +  attr[0] + ") {\n\t\tthis."+ attr[0] + "="+ attr[0] +";\n\t}\n"
    print(res1)
    print(res2)

def SetGet(AttributesList):
    for attr in AttributesList:
        SetGetText(attr)


#   FILL THESE
Entity = "User"
L1 = [["username", "String"], ["password", "String"], ["email_addr", "String"], ["first_name", "String"], ["last_name", "String"], ["date_of_birth", "String"], ["address", "String"]]

L2 = []
for i in L1:
    L2.append(i[0])

#L2 = ["username", "password", "email_addr", "first_name", "last_name", "date_of_birth", "address"]

SetGet(L1)
Construct(Entity, L1)
print("")
EqualsOverride(Entity, L2)
print("")
hashOverride(L2)


