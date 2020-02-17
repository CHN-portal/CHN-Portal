#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.cbdhealthnetworkcore/cbdhealthnetworkd.pid file instead
cbdhealthnetwork_pid=$(<~/.cbdhealthnetworkcore/testnet3/cbdhealthnetworkd.pid)
sudo gdb -batch -ex "source debug.gdb" cbdhealthnetworkd ${cbdhealthnetwork_pid}
