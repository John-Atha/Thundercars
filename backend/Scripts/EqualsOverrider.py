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
Entity = "Address"
L = ["id", "Title", "AddressLine1", "Town", "StateOrProvince", "PostCode", "Latitude", "Longtitude", 
"ContactTelephone1", "ContactTelephone2", "ContactEmail", "AccessComments", "RelatedURL", "GeneralComments", "country"]

EqualsOverride(Entity, L)
    
    