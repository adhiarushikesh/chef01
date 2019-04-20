package 'ntp' do
  action :install
end

package 'tree' do
  action :install
end

file '/etc/motd' do
  content 'this system is property of Adhia, please refrain from using'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end