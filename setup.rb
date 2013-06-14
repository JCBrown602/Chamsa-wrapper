#!/usr/bin/env ruby

if ARGV.length != 2
  puts 'usage: setup.rb <traffic-dir> <odir>'
  exit 1
end

dir_name = ARGV[0]
out_name = ARGV[1]

unless File.directory? dir_name
  puts "#{dir_name} is not a directory"
  exit 1
end

traffic = Dir.new dir_name

def makeFile(fname)
  if File.exist? fname
    File.delete fname
  end
  File.new fname, "w"
end

dataFile = makeFile (File.join out_name, "data")
offFile = makeFile (File.join out_name, "offsets")

# Change data format here.
def process(inp)
  inp
end

# output to 2 files, the offsets and the data
offsets = traffic.map do |fname|
  next if fname == '.' or fname == '..'
  name = File.join traffic, fname
  f = File.new name, "r"
  dataFile.write process(f.read)
  [File.stat(name).size].pack "L<"
end.select do |x|
  x != nil
end.unshift([0].pack "L<").join

offFile.write offsets
