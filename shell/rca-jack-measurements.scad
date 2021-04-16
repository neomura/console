use <../submodules/neomura/cartridge/measurements.scad>;
use <pad-connector-measurements.scad>;

function console_rca_jack_body_width() = 10.1;
function console_rca_jack_body_length() = 10.1;
function console_rca_jack_body_height() = 11.6;

function console_rca_jack_diameter() = 8.35;
function console_rca_jack_position() = 6.25;
function console_rca_jack_sides() = 64;

function console_rca_jack_positions() = [
  [
    console_pad_connector_positions()[3][0],
    21.4825,
    0,
  ],
  [
    console_pad_connector_positions()[2][0],
    21.4825,
    0,
  ],
  [
    console_pad_connector_positions()[1][0],
    21.4825,
    0,
  ],
];

function console_rca_jack_pad_diameter() = 3.5;
function console_rca_jack_pad_positions() = [
  [0, -4.125],
  [0, -8.875],
];

function console_rca_jack_pocket_length() = 2.5;
