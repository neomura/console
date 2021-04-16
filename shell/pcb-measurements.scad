use <../submodules/neomura/cartridge/measurements.scad>;
use <button-measurements.scad>;
use <pad-connector-measurements.scad>;
use <foot-measurements.scad>;
use <dc-jack-measurements.scad>;

function console_pcb_to_top() = console_pad_connector_pcb_distance() + console_pad_connector_height();
function console_pcb_to_bottom() = console_pad_connector_peg_height() - cartridge_pcb_thickness() - console_pad_connector_pcb_distance();
function console_pcb_bottom() = cartridge_wall_thickness() + console_pcb_to_bottom() + cartridge_pcb_tolerance();
function console_pcb_top() = console_pcb_bottom() + cartridge_pcb_thickness() + cartridge_pcb_tolerance();

pad_connector_x = [for (pad_connector_position = console_pad_connector_positions()) pad_connector_position[0]];
pad_connector_y = [for (pad_connector_position = console_pad_connector_positions()) pad_connector_position[1]];

dc_jack_y = [for (dc_jack_position = console_dc_jack_positions()) dc_jack_position[1]];

function console_pcb_far() = max(dc_jack_y) - 3.6;

function console_pcb_near() = max(pad_connector_y) + cartridge_pcb_tolerance();
function console_pcb_left() = min(pad_connector_x) - console_pad_connector_width() / 2 - console_pad_connector_wing_width() - cartridge_pcb_tolerance();
function console_pcb_right() = max(pad_connector_x) + console_pad_connector_width() / 2 + console_pad_connector_wing_width() + cartridge_pcb_tolerance();
