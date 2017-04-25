# This is how to execute an arbitrary command in Chef. In general, you should
# never use this as it's not guaranteed to be idempotent. This is only being
# used to demonstrate a basic Chef resource and provide something to see for all
# the scaffolding.
#
# https://docs.chef.io/resource_execute.html
execute 'say hello' do
  command 'echo Hello'
end
