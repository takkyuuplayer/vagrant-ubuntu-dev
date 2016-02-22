yyyymmdd = Time.now.strftime("%Y%m%d")

execute 'apt-get update' do
  command "apt-get update -y && touch /tmp/apt-get-update-#{yyyymmdd}"
  not_if "test -e /tmp/apt-get-update-#{yyyymmdd}"
end

execute 'apt-get-upgrade' do
  command "apt-get upgrade -y && touch /tmp/apt-get-upgrade-#{yyyymmdd}"
  not_if "test -e /tmp/apt-get-upgrade-#{yyyymmdd}"
end

execute 'apt-get-dist-upgrade' do
  command "apt-get upgrade -y && touch /tmp/apt-get-dist-upgrade-#{yyyymmdd}"
  not_if "test -e /tmp/apt-get-dist-upgrade-#{yyyymmdd}"
end

