
files = []

task :find_files do
  FileList['./**/build.rb'].each {|f| files << f}
end

task :import_tasks => :find_files do
  puts ""
  files.each do |f|
    puts "Updating #{File.basename(File.dirname(f)).capitalize}"
    require f
  end
  puts ""
end

task :byte_compile_everything => :import_tasks do
  puts "Compiling ELisp files"
  output = `find . -iname "*.el" | xargs emacs -batch -f batch-byte-compile 2>&1`
  puts ""
end

task :default => :byte_compile_everything do
end
