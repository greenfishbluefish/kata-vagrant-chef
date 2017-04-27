# This is the file that describes what our Chef cookbooks need in order to
# function. Just like the Gemfile downloads and manages Ruby libraries, the
# Berksfile will download and manage Chef libraries.
#
# https://docs.chef.io/berkshelf.html

# This is the source for all cookbooks from the Internet. If you have a private
# "supermarket", then you can specify it here as well.
source 'https://supermarket.chef.io'

# This tells Berkshelf to use our ACME cookbook. Berkshelf will then read the
# metadata.rb file and ensure all the dependencies listed there are available.
cookbook 'acme', path: 'devops/provisioning/chef/cookbooks/acme'
