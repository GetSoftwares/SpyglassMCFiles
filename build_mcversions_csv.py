from json import load as jl
versions = sorted(jl(open("versions.json")), key = lambda version: version['data_version'])
with open("mcversions.csv","w") as file:
    file.write('id,data_version,data_pack_version,data_pack_version_minor,resource_pack_version,resource_pack_version_minor\n')
    for i in versions:
        print(i['id'], i['data_version'], i['data_pack_version'], i['data_pack_version_minor'], i['resource_pack_version'], i['resource_pack_version_minor'], sep = ',', file = file)
