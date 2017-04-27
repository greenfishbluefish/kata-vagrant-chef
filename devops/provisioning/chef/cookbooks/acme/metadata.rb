# This metadata file isn't necessary to finish this kata. But, it's very useful
# when managing cookbooks as you move forward. Cookbooks are how you organize
# Chef resources into reusable groups of usefulness.
#
# The most useful attribute in metadata.rb is 'depends'. Berkshelf uses this to
# ensure that the necessary cookbook dependencies are installed and available.
#
# q.v. https://docs.chef.io/config_rb_metadata.html for more details

# This should (but doesn't have to) match the directory name.
name 'acme'

# Descriptions are important. Maintainers will read this and expect it's useful
# to them.
description "The cookbook for provisioning ACME Corporation's web application"

# The version is primarily used if this cookbook is consumed by other cookbooks.
# If that's not the case, then leaving it at 0.0.1 or omitting it is fine.
version '0.0.1'

# As you want to depend on cookbooks available in the Chef Supermarket, you add
# them here. When Berkshelf runs, it ensures these cookbooks are available to
# you. I've added a dependency on the Apache2 cookbook to start you off.
#
# https://supermarket.chef.io/cookbooks/apache2
depends 'apache2'
depends 'hostsfile'
