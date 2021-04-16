use <../submodules/neomura/cartridge/measurements.scad>;

function console_pad_connector_width() = 25;
function console_pad_connector_height() = 16.5;
function console_pad_connector_length() = 14.25;
function console_pad_connector_radius() = 2.5;
function console_pad_connector_sides() = 24;
function console_pad_connector_wing_height() = 6.25;
function console_pad_connector_wing_width() = 2.5;
function console_pad_connector_wing_thickness() = 2.25;
function console_pad_connector_front_wing_front() = 2.85;
function console_pad_connector_bottom_wing_bottom() = 5.95;
function console_pad_connector_peg_diameter() = 4.5;
function console_pad_connector_peg_height() = 6;
function console_pad_connector_peg_spacing() = 19.75;
function console_pad_connector_peg_inset() = 7.6;
function console_pad_connector_peg_sides() = 24;
function console_pad_connector_pcb_distance() = 0.7;
function console_pad_connector_terminals_width() = 16;
function console_pad_connector_terminals_height() = 12.1;
function console_pad_connector_terminals_length() = 9;

function console_pad_connector_positions() = [
  [console_pad_connector_width() * -1.5 + console_pad_connector_wing_width() * -3 + cartridge_loose_fit_tolerance() * -1.5, -42, 180],
  [console_pad_connector_width() / -2 + -console_pad_connector_wing_width() + cartridge_loose_fit_tolerance() / -2, -42, 180],
  [console_pad_connector_width() / 2 + console_pad_connector_wing_width() + cartridge_loose_fit_tolerance() / 2, -42, 180],
  [console_pad_connector_width() * 1.5 + console_pad_connector_wing_width() * 3 + cartridge_loose_fit_tolerance() * 1.5, -42, 180],
];
