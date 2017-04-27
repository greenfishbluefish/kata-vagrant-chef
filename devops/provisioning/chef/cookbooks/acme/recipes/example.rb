# This is how to create and manage a file in Chef. This is usually used only for
# lockfiles and similar things. If you want to manage the contents of a file,
# you will usually use a template.
#
# https://docs.chef.io/resource_file.html
file '/tmp/example' do
  content 'Hello from example'
end
