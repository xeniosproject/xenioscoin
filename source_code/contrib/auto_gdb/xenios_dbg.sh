#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.xenioscore/xeniosd.pid file instead
xenios_pid=$(<~/.xenioscore/testnet3/xeniosd.pid)
sudo gdb -batch -ex "source debug.gdb" xeniosd ${xenios_pid}
