#!/usr/bin/env bash

set -euo pipefail
#shopt -s inherit_errexit

BOARD=HALSER
NUM_ROWS=4
NUM_COLS=1

echo "Panelizing..."

    #--tabs 'hwidth: 10mm; vwidth: 10mm' \
kikit panelize \
    --source 'tolerance: 15mm' \
    --layout "grid; rows: ${NUM_ROWS}; cols: ${NUM_COLS}; space: 5mm" \
    --tabs 'annotation' \
    --cuts 'vcuts; layer: Edge.Cuts' \
    --framing 'frame; width: 5mm; space: 2mm' \
    --debug 'trace: true' \
    --tooling '4hole; hoffset: 20mm; voffset: 3.5mm; size: 1.152mm' \
    --fiducials '4fid; hoffset: 30mm; voffset: 4mm; coppersize: 1mm; opening: 2mm;' \
    --text 'simple; text: JLCJLCJLCJLC; anchor: mt; voffset: 2.5mm; hoffset: 0mm; hjustify: center; vjustify: center;' \
    --post 'millradius: 1mm' \
    ${BOARD}.kicad_pcb ${BOARD}-panel-${NUM_ROWS}x${NUM_COLS}.kicad_pcb


echo "Generating fabrication files..."

kikit fab jlcpcb \
    --no-drc \
    --assembly \
    --schematic ${BOARD}.kicad_sch \
    ${BOARD}-panel-${NUM_ROWS}x${NUM_COLS}.kicad_pcb \
    assembly-panel-${NUM_ROWS}x${NUM_COLS}


echo "Done."
