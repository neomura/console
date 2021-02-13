use <../submodules/neomura/cartridge/measurements.scad>;

function console_button_throw() = 2.3;

function console_button_stub_width() = 2 + cartridge_loose_fit_tolerance() * 2;
function console_button_stub_length() = 3 + cartridge_loose_fit_tolerance() * 2;
function console_button_stub_height() = 2.7 + cartridge_loose_fit_tolerance();

function console_button_pixel_size() = cartridge_logo_height() / 7;
function console_button_pixel_push() = 0.075;

function console_button_width() = console_button_pixel_size() + cartridge_engraving_radius() + console_button_pixel_size() * 30 + cartridge_engraving_radius() + console_button_pixel_size();
function console_button_length() = console_button_pixel_size() + cartridge_engraving_radius() + cartridge_logo_height() + cartridge_engraving_radius() + console_button_pixel_size();
function console_button_height() = console_button_stub_height() + cartridge_wall_thickness() + console_button_throw();

function console_button_lip_width() = cartridge_wall_thickness();
function console_button_lip_height() = cartridge_wall_thickness();

module console_button() {
  difference() {
    union() {
      linear_extrude(console_button_lip_height()) {
        hull() {
          translate([
            console_button_width() / 2 - console_button_pixel_size(),
            console_button_length() / 2 - console_button_pixel_size(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size() + console_button_lip_width(),
              $fn = cartridge_engraving_sides()
            );
          };

          translate([
            console_button_width() / 2 - console_button_pixel_size(),
            - console_button_length() / 2 + console_button_pixel_size(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size() + console_button_lip_width(),
              $fn = cartridge_engraving_sides()
            );
          };

          translate([
            - console_button_width() / 2 + console_button_pixel_size(),
            console_button_length() / 2 - console_button_pixel_size(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size() + console_button_lip_width(),
              $fn = cartridge_engraving_sides()
            );
          };

          translate([
            - console_button_width() / 2 + console_button_pixel_size(),
            - console_button_length() / 2 + console_button_pixel_size(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size() + console_button_lip_width(),
              $fn = cartridge_engraving_sides()
            );
          };
        };
      };

      linear_extrude(console_button_height()) {
        hull() {
          translate([
            console_button_width() / 2 - console_button_pixel_size(),
            console_button_length() / 2 - console_button_pixel_size(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size(),
              $fn = cartridge_engraving_sides()
            );
          };

          translate([
            console_button_width() / 2 - console_button_pixel_size(),
            - console_button_length() / 2 + console_button_pixel_size(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size(),
              $fn = cartridge_engraving_sides()
            );
          };

          translate([
            - console_button_width() / 2 + console_button_pixel_size(),
            console_button_length() / 2 - console_button_pixel_size(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size(),
              $fn = cartridge_engraving_sides()
            );
          };

          translate([
            - console_button_width() / 2 + console_button_pixel_size(),
            - console_button_length() / 2 + console_button_pixel_size(),
          ]) {
            circle(
              r = cartridge_engraving_radius() + console_button_pixel_size(),
              $fn = cartridge_engraving_sides()
            );
          };
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
              console_button_width() / 2 - console_button_pixel_size(),
              console_button_length() / 2 - console_button_pixel_size(),
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };

            translate([
              console_button_width() / 2 - console_button_pixel_size(),
              - console_button_length() / 2 + console_button_pixel_size(),
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };

            translate([
              - console_button_width() / 2 + console_button_pixel_size(),
              console_button_length() / 2 - console_button_pixel_size(),
            ]) {
              circle(
                r = cartridge_engraving_radius(),
                $fn = cartridge_engraving_sides()
              );
            };

            translate([
              - console_button_width() / 2 + console_button_pixel_size(),
              - console_button_length() / 2 + console_button_pixel_size(),
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