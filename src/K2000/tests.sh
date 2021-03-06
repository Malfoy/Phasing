#!/bin/bash

echo "*** Running Command: ./run_K2000.sh tests/dbg_paths.txt tests/unitigs.fa 240 tests/afac.gfa tests/afac.fasta***"

./run_K2000.sh tests/dbg_paths.txt tests/unitigs.fa 240 tests/afac.gfa tests/afac.fasta
if [ $? -ne 0 ] ; then
echo "*** Test: FAILURE on command ./run_K2000.sh tests/dbg_paths.txt tests/unitigs.fa 240 tests/afac.gfa tests/afac.fasta"
exit 1
fi

diff tests/dbg_paths.txt_compacted  tests/dbg_paths.txt_compacted_ref >/dev/null
if [ $? -ne 0 ] ; then
echo "*** Test: FAILURE on diff compacted_numbers"
exit 1
fi

diff tests/afac.gfa tests/out.gfa >/dev/null
if [ $? -ne 0 ] ; then
echo "*** Test: FAILURE on diff gfa"
exit 1
fi


diff tests/afac.fasta tests/out.fasta >/dev/null
if [ $? -ne 0 ] ; then
echo "*** Test: FAILURE on diff fasta"
exit 1
fi

echo "*** Test: OK"
rm -f tests/dbg_paths.txt_compacted tests/afac.gfa tests/afac.fasta
exit 0
