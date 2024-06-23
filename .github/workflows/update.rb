
## use (uploaded/published) gems (only)

require 'sportdb/readers'
require 'sportdb/exporters'


puts
puts "work_dir:"
pp Dir.pwd
#=> "/home/runner/work/euro/euro"

## note - euro/euro  



SportDb.open_mem   ## use (setup) in memory db

SportDb.read( "#{Dir.pwd}/2024--germany/euro.txt" ) 


puts "table stats:"
SportDb.tables


##
## generate json

SportDb::Model::Event.order( :id ).each do |event|
    puts "    #{event.key} | #{event.league.key} - #{event.league.name} | #{event.season.key}"
end



SportDb::JsonExporter.export_euro( 'euro', out_root: './tmp/json/euro' )


##
##  No such file or directory
#   @ rb_sysopen - /home/runner/work/euro/euro/../euro.json/2024/euro.json

### copy to euro.json repo
src  = './tmp/json/euro/2024/euro.json'
dest = "#{Dir.pwd}/../euro.json/2024/euro.json" 

## make sure dir exists
dest_p = File.dirname( dest )
FileUtils.mkdir_p( dest_p )  unless File.exist?( dest_p )   
FileUtils.cp( src, dest )


## print for debugging
puts  File.open( dest, 'r:utf-8') { |f| f.read }


puts "bye"

