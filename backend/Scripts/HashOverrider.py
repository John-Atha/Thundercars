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
            
L = ["id", "Title", "AddressLine1", "Town", "StateOrProvince", "PostCode", "Latitude", "Longtitude", 
"ContactTelephone1", "ContactTelephone2", "ContactEmail", "AccessComments", "RelatedURL", "GeneralComments", "country"]

hashOverride(L)
