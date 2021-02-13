use <../submodules/neomura/cartridge/measurements.scad>;

function console_pad_connector_terminals_length() = 3.1;
function console_pad_connector_terminals_rounded_offset() = 3.6;
function console_pad_connector_terminals_square_offset() = 4.1;
function console_pad_connector_terminals_height() = 4.1;
function console_pad_connector_barrel_width() = 38.6;
function console_pad_connector_barrel_height() = 12;
function console_pad_connector_barrel_length() = 12;
function console_pad_connector_barrel_radius() = 1.75;
function console_pad_connector_barrel_rounded_sides() = 64;
function console_pad_connector_barrel_radius_sides() = 16;
function console_pad_connector_barrel_notch_square() = 7.5;
function console_pad_connector_barrel_notch_rounded() = 7.2;
function console_pad_connector_barrel_notch_width() = 1.7;
function console_pad_connector_barrel_notch_height() = 1.12;
function console_pad_connector_lip_width() = 2.25;
function console_pad_connector_lip_thickness() = 2.05;

function console_pad_connector_positions() = [
  [-22.86, -31.75, 180],
  [22.86, -31.75, 180],
  [-40.005, -4.445, 90],
  [40.005, -4.445, -90],
];
