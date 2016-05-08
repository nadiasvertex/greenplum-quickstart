#!/bin/bash
cd $HOME
source /usr/local/gpdb/greenplum_path.sh

${GPHOME}/bin/gpseginstall -f machines.config
${GPHOME}/bin/gpinitsystem -a -c gp.config -h machines.config --shared_buffers=10MB
