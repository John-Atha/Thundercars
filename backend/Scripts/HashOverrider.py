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
            
L = ["username", "password", "email_addr", "first_name", "last_name", "date_of_birth", "address"]

hashOverride(L)
