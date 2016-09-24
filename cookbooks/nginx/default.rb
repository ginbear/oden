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

package 'http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm' do
  not_if 'rpm -q nginx-release-centos-7-0.el7.ngx.noarch'
end

package "nginx" do
  action :install
end

# remote_file "/etc/nginx/conf.d/static.conf"
# template "/etc/nginx/conf.d/dynamic.conf"
