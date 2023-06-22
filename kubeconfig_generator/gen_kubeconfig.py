import sys

env = [ "a", "t" ]

from string import Template
p_header = """apiVersion: v1 
cluster"""
p_context = """contexts:"""

t_cluster = Template("""- cluster:
    server: https://api.ns-cls003-${x}.ceap.nl:6443
    name: api.ns-cls003-${x}.ceap.nl""")

t_context = Template(""" - context:
    cluster: api-ns-cls003-${x}-ceap-nl:6443
    namespace: ns-bsbm-${x}-ado
    user: giedo.stolk@ns.nl/api-ns-cls003-${x}-ceap-nl:6443""")


print (p_header)
for i in env:
    print (t_cluster.substitute({'x' : i }))
print (p_context)
for i in env:
    print (t_context.substitute({'x' : i }))

    