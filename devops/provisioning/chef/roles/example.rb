# Like cookbooks (within the metadata.rb), roles have to have a unique name.
name 'example'

# Descriptions are important. Maintainers will read this and expect it's useful
# to them.
description 'An example role. You should remove this.'

# This is the list of recipes and roles this role represents. To add more, just
# add per the example below. In this case, we're adding the 'example' recipe
# from the 'acme' cookbook.
run_list 'recipe[acme::example]'

# An example of multiple items. If you want to include the recipe in default.rb,
# you can omit the name from the recipe. So, 'recipe[foo1]' is equivalent to
# 'recipe[foo1::default]'.
# run_list 'recipe[foo1]', 'recipe[foo2::bar2]', 'role[foo3]'

# These are default values set for attributes when this role runs. These values
# are only applied to the recipes and roles this role represents. They can be
# overridden by values set in other places (such as the Vagrantfile).
#
# https://docs.chef.io/attributes.html
# default_attributes 'apache2' => {
#   'listen_ports' => [ 80, 443 ],
# }
