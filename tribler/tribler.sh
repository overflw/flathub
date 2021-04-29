#!/bin/sh
# Run Tribler from source tree

set -e

TRIBLER_DIR=/app/Tribler
TRIBLER_SCRIPT=${TRIBLER_DIR}/run_tribler.py

PYTHONPATH=${TRIBLER_DIR}/pyipv8:${TRIBLER_DIR}/anydex:${TRIBLER_DIR}/tribler-common:${TRIBLER_DIR}/tribler-core:${TRIBLER_DIR}/tribler-gui

export PYTHONPATH

PYQTGRAPH_QT_LIB="PyQt5"
export PYQTGRAPH_QT_LIB

cd ${TRIBLER_DIR}

exec python3 ${TRIBLER_SCRIPT} ${@}
