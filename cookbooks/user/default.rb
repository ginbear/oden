ssh_user = node["ssh_user"]
ssh_key  = node["ssh_key"]

directory "/home/#{ssh_user}/.ssh" do
  owner ssh_user
  group ssh_user
  mode  '700'
end

file "/home/#{ssh_user}/.ssh/authorized_keys" do
  content ssh_key
  owner ssh_user
  group ssh_user
  mode  '600'
end
