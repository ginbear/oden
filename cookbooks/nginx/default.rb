# .
# ├── recipe.rb
# ├── files
# │   └── etc
# │       └── nginx
# │           └── conf.d
# │               └── static.conf
# └── templates
#     └── etc
#         └── nginx
#             └── conf.d
#                 └── dynamic.conf

# recipe.rb
package "nginx"

remote_file "/etc/nginx/conf.d/static.conf"
template "/etc/nginx/conf.d/dynamic.conf"
