use <../submodules/neomura/cartridge/measurements.scad>;
use <pad-connector-measurements.scad>;
use <dc-jack-measurements.scad>;
use <pcb-measurements.scad>;

function console_outer_height() = console_pcb_top() + console_pcb_to_top() + cartridge_wall_thickness();

pad_connector_x = [for (pad_connector_position = console_pad_connector_positions()) pad_connector_position[0]];
pad_connector_y = [for (pad_connector_position = console_pad_connector_positions()) pad_connector_position[1]];

pad_connector_length = console_pad_connector_barrel_length() + console_pad_connector_lip_thickness() + cartridge_loose_fit_tolerance() + cartridge_wall_thickness();

function console_outer_left() = min(pad_connector_x) - pad_connector_length;
function console_outer_right() = max(pad_connector_x) + pad_connector_length;
function console_outer_near() = min(pad_connector_y) - pad_connector_length;

dc_jack_y = [for (dc_jack_position = console_dc_jack_positions()) dc_jack_position[1]];

function console_outer_far() = max(dc_jack_y) +  + cartridge_loose_fit_tolerance();
