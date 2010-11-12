Dir.chdir(File.dirname(__FILE__))

begin
  output = `git clone https://github.com/eschulte/yasnippets-rails.git 2>&1`
  raise "build failed" if $?.exitstatus > 0

  `rsync -rvC yasnippets-rails/rails-snippets/ /home/alex/.emacs.d/snippets/`
rescue
  $stderr.puts "ERROR: BUILD FAILED with output: \n#{output}"  
ensure
  `rm -rf yasnippets-rails`
end
