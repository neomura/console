use <../submodules/neomura/cartridge/measurements.scad>;
use <pad-connector-measurements.scad>;

function console_button_throw() = 2.3;

function console_button_stub_width() = 3 + cartridge_loose_fit_tolerance() * 2;
function console_button_stub_length() = 2 + cartridge_loose_fit_tolerance() * 2;
function console_button_stub_height() = 2.5 + cartridge_loose_fit_tolerance();

function console_button_pixel_size() = cartridge_logo_height() / 7;
function console_button_pixel_push() = 0.075;

function console_button_length() = console_button_pixel_size() + cartridge_engraving_radius() + cartridge_logo_height() + cartridge_engraving_radius() + console_button_pixel_size();
function console_button_width() = console_button_length();
function console_button_height() = console_button_stub_height() + cartridge_wall_thickness() + console_button_throw();

function console_button_lip_width() = cartridge_wall_thickness();
function console_button_lip_height() = cartridge_wall_thickness();

function console_button_body_width() = 8.125;
function console_button_body_length() = 8.125;
function console_button_body_height() = 8;

function console_button_tolerance() = 0.3;

function console_button_positions() = [
  [
    console_pad_connector_positions()[0][0],
    0,
    0,
  ],
  [
    console_pad_connector_positions()[3][0],
    0,
    0,
  ],
];

module console_button() {
  difference() {
      linear_extrude(console_button_height()) {
        hull() {
          translate([
            console_button_width() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
            console_button_length() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size(),
              $fn = cartridge_engraving_sides()
            );
          };

          translate([
            console_button_width() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
            - console_button_length() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size(),
              $fn = cartridge_engraving_sides()
            );
          };

          translate([
            - console_button_width() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
            console_button_length() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size(),
              $fn = cartridge_engraving_sides()
            );
          };

          translate([
            - console_button_width() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
            - console_button_length() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size(),
              $fn = cartridge_engraving_sides()
            );
          };
        };
      };

    translate([
      0,
      0,
      console_button_height() - cartridge_engraving_depth(),
    ]) {
      linear_extrude(cartridge_engraving_depth()) {
        difference() {
          hull() {
            translate([
              console_button_width() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
              console_button_length() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };

            translate([
              console_button_width() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
              - console_button_length() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };

            translate([
              - console_button_width() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
              console_button_length() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };

            translate([
              - console_button_width() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
              - console_button_length() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };
          };

          children();
        };
      };
    };

    translate([
      console_button_stub_width() / -2,
      console_button_stub_length() / -2,
      0,
    ]) {
      cube([
        console_button_stub_width(),
        console_button_stub_length(),
        console_button_stub_height(),
      ]);
    };
  };
};
