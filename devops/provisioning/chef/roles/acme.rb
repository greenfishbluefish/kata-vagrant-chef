name 'acme'
description 'Role for getting everything ACME-related installed'

run_list 'recipe[apache2]', 'recipe[acme]'

default_attributes 'apache2' => {
  'listen_ports' => [ 80, 443 ],
}
