DEPENDENCIES
============
Have Ruby installed.
Install CHamsa using a patched version of sary.
A working version of CHamsa including the patch for sary can be found [here](https://github.com/maxsnew/CHamsa).

SETUP
=====

setup.rb
--------
Run setup.rb on 2 directories full of traffic files with the desired output directories.

ds
--
Run

`ds -w [odir]/data.ary [odir]/data`

for each of the 2 odirs to do some preproccessing.

RUNNING
=======
Run

`siggen -S [user_traffic_odir] -N [noise_traffic_odir] -G [output_dir]`

where output_dir is empty.
