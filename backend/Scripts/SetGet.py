# errors on capitalizing some letters of the attributes
# after running, if such errors occured:
# for each attribute:
#   do once:
#       choose
#       change all occurences
#       write correctly the in between letters (capital or not)


def SetGetText(attr):
    res1 = "\tpublic " + attr[1] + " get" + attr[0].capitalize() + "() {\n\t\treturn this."+ attr[0] + ";\n\t}\n"
    res2 = "\tpublic void set" + attr[0].capitalize() + "(" + attr[1]  + " " +  attr[0] + ") {\n\t\tthis."+ attr[0] + "="+ attr[0] +";\n\t}\n"
    print(res1)
    print(res2)

def SetGet(AttributesList):
    for attr in AttributesList:
        SetGetText(attr)

L = [["username", "String"], ["password", "String"], ["email_addr", "String"], ["first_name", "String"], ["last_name", "String"], ["date_of_birth", "String"], ["address", "String"]]

SetGet(L)
