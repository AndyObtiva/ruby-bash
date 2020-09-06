# ruby-bash - User-Friendly Versions of Bash Commands Built in Ruby
# 
# Copyright (c) 2020 Andy Maleh
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

$LOAD_PATH.unshift(File.expand_path('../..', __FILE__))

version = File.read(File.expand_path('../../../VERSION', __FILE__)).strip
puts "== gdr (go to directory) - ruby-bash v#{version} - Copyright (c) 2020 Andy Maleh - Licensed Under the GPLv3 =="

require 'tty-prompt'
require 'fileutils'

original_path = FileUtils.pwd
prompt = TTY::Prompt.new

prompt.on(:keypress) do |event|
  if event.value == "\u0018" # CTRL+X
    puts # a new line is needed
    puts "Exiting at path: #{FileUtils.pwd}"
    command = "cd #{FileUtils.pwd}"
    puts command
    home_dir = `echo ~`.strip
    File.write("#{home_dir}/.ruby_bash_command_gdr", command)  
    exit(0)
  end
end

DIRS = [FileUtils.pwd]
prompt.on(:keyescape) do |event|
  if DIRS[-2]
    # first delete anything the user might have typed
    100.times {prompt.trigger(:keybackspace)} 
    
    if DIRS[-2].include?(DIRS[-1])
      DIRS[-2].sub(DIRS[-1], '').gsub('/', '').chars.each do |char|
        event = TTY::Reader::KeyEvent.from(prompt.reader.console.keys, char, '')      
        prompt.trigger(:keypress, event)
      end
    end
    
    # remove the last 2 entries, since we're abandoning the last one and we will repush the one before it
    DIRS.pop
    DIRS.pop
     
    prompt.trigger(:keyenter)
  end
end

begin
  loop do
    exception = nil
    dir_lines = `ls -l | grep '^d'`.split("\n")
    dir_lines = ['..'] + dir_lines unless FileUtils.pwd == '/'
    dir_line = prompt.select("Choose a directory: ", dir_lines, cycle: true, per_page: 40, filter: true, help: "\nCurrent: #{FileUtils.pwd} (Type to filter / ENTER to navigate / ESC to go back / CTRL+X to go to directory / CTRL+C to abort back to original path)#{"\n#{exception}" if exception}", show_help: :always)
    
    dir = dir_line.split.last
    begin
      DIRS << File.expand_path(File.join(FileUtils.pwd, dir))
      FileUtils.cd dir
    rescue => e
      exception = e
    end
  end
rescue TTY::Reader::InputInterrupt => e
  # No Op
  puts # a new line is needed
  puts "Back to original path (abort detected): #{original_path}"
  exit(0)
end
