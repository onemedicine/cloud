#!/bin/bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$WKDIR/stop.sh
sleep 1
$WKDIR/clean.sh
sleep 1
$WKDIR/start.sh
