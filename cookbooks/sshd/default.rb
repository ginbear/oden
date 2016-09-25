ssh_user = node["ssh_user"]

execute 'PasswordAuthentication -> no' do
  user 'root'
  command 'sed -i -e \'s/#PasswordAuthentication yes/PasswordAuthentication no/\' /etc/ssh/sshd_config'
end

execute 'PermitRootLogin -> no' do
  user 'root'
  command 'sed -i -e \'s/PermitRootLogin yes/PermitRootLogin no/\' /etc/ssh/sshd_config'
end

execute 'allow users' do
  not_if "grep #{ssh_user} /etc/ssh/sshd_config"
  user 'root'
  command "echo \"AllowUsers #{ssh_user}\" >> /etc/ssh/sshd_config"
end

service 'sshd' do
  action :restart
end
