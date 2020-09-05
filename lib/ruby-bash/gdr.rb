$LOAD_PATH.unshift(File.expand_path('../..', __FILE__))

puts "== gdr - ruby-bash version #{File.read(File.expand_path('../../../VERSION', __FILE__)).strip} =="

require 'tty-prompt'
require 'fileutils'

prompt = TTY::Prompt.new  

begin  
  loop do
    exception = nil
    dir_lines = `ls -l | grep '^d'`.split("\n")
    dir_lines = ['..'] + dir_lines unless FileUtils.pwd == '/'
    dir_line = prompt.select("Choose a directory: ", dir_lines, cycle: true, per_page: 40, filter: true, help: "\nCurrent: #{FileUtils.pwd} (CTRL+C to exit)#{"\nexception" if exception}", show_help: :always)
      
    dir = dir_line.split.last
    begin
      FileUtils.cd dir
    rescue => e
      exception = e
    end
  end
rescue TTY::Reader::InputInterrupt => e
  # No Op
  puts # a new line is needed
  puts "Exiting at path: #{FileUtils.pwd}"
  command = "cd #{FileUtils.pwd}"
  puts command
  home_dir = `echo ~`.strip
  File.write("#{home_dir}/.ruby_bash_command_gdr", command)    
end
# TODO support abort back to original path
