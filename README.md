DEPENDENCIES
============
Have Ruby installed.
Install Hamsa using a patched version of sary. Build ds in the TokenAPI directory of Hamsa and build siggen in the Hamsa directory.
A modern working version of Hamsa including the patch for sary can be found [here](https://github.com/maxsnew/CHamsa).
Sary can be found [here](http://sary.sourceforge.net/).
The commands listed here assume that setup.rb (found in this repository), ds and siggen (both found in the CHamsa repository) are on the user's PATH.

SETUP
=====

setup.rb
--------
Run setup.rb on 2 directories full of traffic files with the desired output directories.
For example if you have a directory of traffic 'tracker_traffic' in which you want to find invariants and you have a directory 'noise_traffic' with traffic you don't want to match against, run

`setup.rb tracker_traffic [tracker_odir]`

`setup.rb noise_traffic [noise_odir]`

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
