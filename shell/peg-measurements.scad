use <../submodules/neomura/cartridge/measurements.scad>;
use <outer-measurements.scad>;

function console_peg_width() = 5;
function console_peg_length() = 10;
function console_peg_height() = 10;

function console_peg_positions() = [
  [
    console_outer_left() + cartridge_wall_thickness() + cartridge_wall_thickness() + console_peg_width() / 2,
    console_outer_near() + cartridge_wall_thickness() + cartridge_wall_thickness() + console_peg_length() / 2,
    0
  ],
  [
    console_outer_right() - cartridge_wall_thickness() - cartridge_wall_thickness() - console_peg_width() / 2,
    console_outer_near() + cartridge_wall_thickness() + cartridge_wall_thickness() + console_peg_length() / 2,
    0
  ],
];
