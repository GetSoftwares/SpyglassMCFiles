from json import load as jl
versions = []
for i in jl(open("versions.json")):
    versions.append(i['id'])
with open('versions.txt', 'w') as file:
    for version in reversed(versions):
        print(version, file = file)