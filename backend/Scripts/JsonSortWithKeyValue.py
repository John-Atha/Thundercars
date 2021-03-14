lis = [
{
    "ID":5,
    "Title":"Afghanistan",
    "ISOCode":"AF",
    "ContinentCode":"AS"
 },
 {
    "ID":6,
    "Title":"Aland Islands",
    "ISOCode":"AX",
    "ContinentCode":"EU"
 }]

print(sorted(lis, key = lambda i: i['ID']))