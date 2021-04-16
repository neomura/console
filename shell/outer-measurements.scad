use <../submodules/neomura/cartridge/measurements.scad>;
use <pad-connector-measurements.scad>;
use <dc-jack-measurements.scad>;
use <pcb-measurements.scad>;
use <button-measurements.scad>;

function console_outer_height() = console_pcb_top() + console_pcb_to_top() + cartridge_wall_thickness();

pad_connector_x = [for (pad_connector_position = console_pad_connector_positions()) pad_connector_position[0]];
pad_connector_y = [for (pad_connector_position = console_pad_connector_positions()) pad_connector_position[1]];

function console_outer_left() = min(pad_connector_x) - console_pad_connector_width() / 2 - console_pad_connector_wing_width() - cartridge_loose_fit_tolerance() - cartridge_wall_thickness();
function console_outer_right() = max(pad_connector_x) + console_pad_connector_width() / 2 + console_pad_connector_wing_width() + cartridge_loose_fit_tolerance() + cartridge_wall_thickness();
function console_outer_near() = min(pad_connector_y) - cartridge_wall_thickness();

dc_jack_y = [for (dc_jack_position = console_dc_jack_positions()) dc_jack_position[1]];

function console_outer_far() = max(dc_jack_y) +  + cartridge_loose_fit_tolerance();

module console_edge_badge(position) {
  translate([position[0], position[1]]) {
    rotate(position[2]) {
      translate([
        0,
        cartridge_engraving_margin() + cartridge_engraving_radius() + console_button_pixel_size() * 3.5,
      ]) {
        difference() {
          hull() {
            translate([
              console_button_pixel_size() * 3.5,
              console_button_pixel_size() * 3.5,
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };

            translate([
              - console_button_pixel_size() * 3.5,
              console_button_pixel_size() * 3.5,
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };

            translate([
              console_button_pixel_size() * 3.5,
              - console_button_pixel_size() * 3.5,
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };

            translate([
              - console_button_pixel_size() * 3.5,
              - console_button_pixel_size() * 3.5,
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };
          };

          translate([
            - console_button_pixel_size() * 3.5 - console_button_pixel_push(),
            - console_button_pixel_size() * 3.5 - console_button_pixel_push(),
          ]) {
            children();
          };
        };
      };
    };
  };
};
