#!/bin/bash

# Set variables to shell script arguments
experiment_id=$1
TA_mf=$2
RH_mf=$3
WS_mf=$4
P_mf=$5
SWR_mf=$6
LWR_mf=$7
TA_cf=$8
RH_cf=$9
WS_cf=${10}
P_cf=${11}
SWR_cf=${12}
LWR_cf=${13}
end=${14}
site=${15}

# Set up simulation folder for each unique exerpiment_id.
cd ${site}
mkdir -p ${experiment_id}
cp {"${site}.smet","${site}.sno","${site}.ini","base.ini"} $experiment_id
cd $experiment_id
mkdir -p output

# Definite paths to initialization file (.ini) and SNOWPACK binary. 
ini_path="${site}.ini"
snowpack_binary_path="../../snowpack/Source/snowpack/bin/snowpack"
export LD_LIBRARY_PATH=/home/jovyan/snowpack/Source/snowpack/lib:/home/jovyan/snowpack/Source/meteoio/lib:/home/jovyan/lib:${LD_LIBRARY_PATH}
export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}

# Modify forcing file
# Units multiplier 
um_line="units_multiplier = 1 $2 $3 $4 1 1 $5 1 $6 $7"
sed -i "s/units_multiplier = 1 1 1 1 1 1 1 1 1 1/${um_line}/g" "${site}.smet"
um_line="units_multiplier = 1 $2 $3 $4 $6 $7 $5"
sed -i "s/units_multiplier = 1 1 1 1 1 1 1/${um_line}/g" "${site}.smet"

# Remove epsg line
sed -i "/epsg             = 3031/d" "${site}.smet"
sed -i "/epsg             = 3413/d" "${site}.smet"

# Units offset
uo_line="units_offset = 0 $8 $9 ${10} 0 0 ${11} 0 ${12} ${13}"
sed -i "s/units_offset = 0 0 0 0 0 0 0 0 0 0/${uo_line}/g" "${site}.smet"
uo_line="units_offset = 0 $8 $9 ${10} ${12} ${13} ${11}"
sed -i "s/units_offset = 0 0 0 0 0 0 0/${uo_line}/g" "${site}.smet"

# Add experiment tag to output files
experiment_tag_line="EXPERIMENT      =       ${experiment_id}"
sed -i "s/EXPERIMENT      =       NO_EXP/${experiment_tag_line}/g" "${site}.ini"

# Execute SNOWPACK
$snowpack_binary_path -c ${ini_path} -e $end

# Zip output directory
../../bin/zip -r output.zip output/