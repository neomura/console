use <../submodules/neomura/cartridge/measurements.scad>;
use <button-measurements.scad>;
use <pad-connector-measurements.scad>;
use <foot-measurements.scad>;

function console_pcb_to_top() = console_button_body_height() + console_button_throw() + console_button_stub_height();
function console_pcb_to_bottom() = - console_pad_connector_terminals_height() + console_pad_connector_barrel_height() / 2 + console_pad_connector_lip_width();
function console_pcb_bottom() = console_foot_embed() + cartridge_wall_thickness() + console_pcb_to_bottom() + cartridge_pcb_tolerance();
function console_pcb_top() = console_pcb_bottom() + cartridge_pcb_thickness() + cartridge_pcb_tolerance();

function console_pcb_far() = 16.72;
function console_pcb_near() = -31.75;
function console_pcb_left() = -40.005;
function console_pcb_right() = 40.005;
