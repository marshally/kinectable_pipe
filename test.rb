require 'rubygems'
require 'json'
require 'pty'

PTY.spawn("./kinectpipe").each do |r,w,p|
  loop do
    s = r.gets
    if s[/\A\{/]
      begin
        puts JSON.parse(s).inspect
      rescue
        puts s
        exit
      end
    end
  end
end