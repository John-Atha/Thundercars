
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

Entity = "User"
L = [["username", "String"], ["password", "String"], ["email_addr", "String"], ["first_name", "String"], ["last_name", "String"], ["date_of_birth", "String"], ["address", "String"]]

Construct(Entity, L)