# Seting up my client config file
include stdlib

file_line {'Turn off passwd auth':
  ensure  => present,
  path    => '/etc/ssh/config',
  line    => 'PasswordAuthentication no',
  replace => true,
}

file_line {'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/config',
  line    => 'IdentityFile ~/.ssh/school',
  replace => true,
}
