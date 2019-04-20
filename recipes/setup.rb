package 'ntp' do
  action :install
end

package 'tree' do
  action :install
end

# HOSTNAME = node['hostname']
# IPADDRESS = node['ipaddress']
# CPU_TOTAL = node['cpu']['0']['mhz']
# MEM_TOTAL = node['memory']['total']


file '/etc/motd' do
  content "this system is property of Adhia, please refrain from using
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}
"
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end