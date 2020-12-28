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

Entity = "User"
L = ["username", "password", "email_addr", "first_name", "last_name", "date_of_birth", "address"]

EqualsOverride(Entity, L)
    
    