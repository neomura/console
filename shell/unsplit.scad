use <../submodules/neomura/cartridge/measurements.scad>;
use <../submodules/neomura/cartridge/slot/vertical/cutout.scad>;
use <button-measurements.scad>;
use <pad-connector-measurements.scad>;
use <rca-jack-measurements.scad>;
use <button-measurements.scad>;
use <led-measurements.scad>;
use <resistor-measurements.scad>;
use <pcb-measurements.scad>;
use <dc-jack-measurements.scad>;
use <outer-measurements.scad>;

module console_unsplit() {
  difference() {
    linear_extrude(console_outer_height()) {
      hull() {
        translate([
          console_outer_left() + cartridge_wall_thickness(),
          console_outer_near() + cartridge_wall_thickness(),
        ]) {
          circle(r = cartridge_wall_thickness(), $fn = cartridge_wall_sides());
        };

        translate([
          console_outer_right() - cartridge_wall_thickness(),
          console_outer_near() + cartridge_wall_thickness(),
        ]) {
          circle(r = cartridge_wall_thickness(), $fn = cartridge_wall_sides());
        };

        translate([
          console_outer_left() + cartridge_wall_thickness(),
          console_outer_far() - cartridge_wall_thickness(),
        ]) {
          circle(r = cartridge_wall_thickness(), $fn = cartridge_wall_sides());
        };

        translate([
          console_outer_right() - cartridge_wall_thickness(),
          console_outer_far() - cartridge_wall_thickness(),
        ]) {
          circle(r = cartridge_wall_thickness(), $fn = cartridge_wall_sides());
        };
      };
    };

    // PCB.
    translate([
      console_pcb_left() - cartridge_pcb_tolerance(),
      console_pcb_near() - cartridge_pcb_tolerance(),
      console_pcb_bottom(),
    ]) {
      cube([
        cartridge_pcb_tolerance() - console_pcb_left() + console_pcb_right() + cartridge_pcb_tolerance(),
        cartridge_pcb_tolerance() - console_pcb_near() + console_pcb_far() + cartridge_pcb_tolerance(),
        cartridge_pcb_tolerance() + cartridge_pcb_thickness() + cartridge_pcb_tolerance(),
      ]);
    };

    translate([
      0,
      0,
      console_pcb_top()
    ]) {
      cartridge_slot_vertical_cutout(console_pcb_to_top() + cartridge_wall_thickness());
    };

    for (pad_position = console_pad_connector_positions()) {
      translate([
        pad_position[0],
        pad_position[1],
        console_pcb_top() + console_pad_connector_terminals_height() / 2,
      ]) {
        rotate([0, 0, pad_position[2]]) {
          // Barrel.
          translate([0, - cartridge_loose_fit_tolerance(), 0]) {
            rotate([-90, 180, 0]) {
              linear_extrude(console_pad_connector_barrel_length()) {
                hull() {
                  // The rounded end.
                  translate([
                    - console_pad_connector_barrel_width() / 2 + console_pad_connector_barrel_height() / 2,
                    0,
                  ]) {
                    circle(
                      d = cartridge_loose_fit_tolerance() + console_pad_connector_barrel_height() + cartridge_loose_fit_tolerance(),
                      $fn = console_pad_connector_barrel_rounded_sides()
                    );
                  };

                  // The bottom of the square end.
                  translate([
                    console_pad_connector_barrel_width() / 2 - console_pad_connector_barrel_radius(),
                    - console_pad_connector_barrel_height() / 2 + console_pad_connector_barrel_radius(),
                  ]) {
                    circle(
                      r = console_pad_connector_barrel_radius() + cartridge_loose_fit_tolerance(),
                      $fn = console_pad_connector_barrel_radius_sides()
                    );
                  };

                  // The top of the square end.
                  translate([
                    console_pad_connector_barrel_width() / 2 - console_pad_connector_barrel_radius(),
                    console_pad_connector_barrel_height() / 2 - console_pad_connector_barrel_radius(),
                  ]) {
                    circle(
                      r = console_pad_connector_barrel_radius() + cartridge_loose_fit_tolerance(),
                      $fn = console_pad_connector_barrel_radius_sides()
                    );
                  };
                };

                // The notch near the rounded end.
                translate([
                  - console_pad_connector_barrel_width() / 2 - cartridge_loose_fit_tolerance() + console_pad_connector_barrel_notch_rounded(),
                  - console_pad_connector_barrel_height() / 2 - console_pad_connector_barrel_notch_height() - cartridge_loose_fit_tolerance(),
                ]) {
                  square([
                    cartridge_loose_fit_tolerance() + console_pad_connector_barrel_notch_width() + cartridge_loose_fit_tolerance(),
                    cartridge_loose_fit_tolerance() + console_pad_connector_barrel_notch_height() + console_pad_connector_barrel_height() + console_pad_connector_barrel_notch_height() + cartridge_loose_fit_tolerance(),
                  ]);
                };

                // The notch near the square end.
                translate([
                  console_pad_connector_barrel_width() / 2 - cartridge_loose_fit_tolerance() - console_pad_connector_barrel_notch_square() - console_pad_connector_barrel_notch_width(),
                  - console_pad_connector_barrel_height() / 2 - console_pad_connector_barrel_notch_height() - cartridge_loose_fit_tolerance(),
                ]) {
                  square([
                    cartridge_loose_fit_tolerance() + console_pad_connector_barrel_notch_width() + cartridge_loose_fit_tolerance(),
                    cartridge_loose_fit_tolerance() + console_pad_connector_barrel_notch_height() + console_pad_connector_barrel_height() + console_pad_connector_barrel_notch_height() + cartridge_loose_fit_tolerance(),
                  ]);
                };
              };
            };
          };

          // Lip.
          translate([0, console_pad_connector_barrel_length() - cartridge_loose_fit_tolerance(), 0]) {
            rotate([-90, 180, 0]) {
              linear_extrude(cartridge_loose_fit_tolerance() + console_pad_connector_lip_thickness() + cartridge_loose_fit_tolerance()) {
                hull() {
                  // The rounded end.
                  translate([
                    - console_pad_connector_barrel_width() / 2 + console_pad_connector_barrel_height() / 2,
                    0,
                  ]) {
                    circle(
                      d = cartridge_loose_fit_tolerance() + console_pad_connector_lip_width() + console_pad_connector_barrel_height() + console_pad_connector_lip_width() + cartridge_loose_fit_tolerance(),
                      $fn = console_pad_connector_barrel_rounded_sides()
                    );
                  };

                  // The bottom of the square end.
                  translate([
                    console_pad_connector_barrel_width() / 2 - console_pad_connector_barrel_radius(),
                    - console_pad_connector_barrel_height() / 2 + console_pad_connector_barrel_radius(),
                  ]) {
                    circle(
                      r = console_pad_connector_barrel_radius() + console_pad_connector_lip_width() + cartridge_loose_fit_tolerance(),
                      $fn = console_pad_connector_barrel_radius_sides()
                    );
                  };

                  // The top of the square end.
                  translate([
                    console_pad_connector_barrel_width() / 2 - console_pad_connector_barrel_radius(),
                    console_pad_connector_barrel_height() / 2 - console_pad_connector_barrel_radius(),
                  ]) {
                    circle(
                      r = console_pad_connector_barrel_radius() + console_pad_connector_lip_width() + cartridge_loose_fit_tolerance(),
                      $fn = console_pad_connector_barrel_radius_sides()
                    );
                  };
                };
              };
            };
          };

          // Front opening.
          translate([
            0,
            console_pad_connector_barrel_length() + console_pad_connector_lip_thickness() + cartridge_loose_fit_tolerance(),
            0,
          ]) {
            rotate([-90, 180, 0]) {
              linear_extrude(cartridge_wall_thickness() + cartridge_loose_fit_tolerance()) {
                hull() {
                  // The rounded end.
                  translate([
                    - console_pad_connector_barrel_width() / 2 + console_pad_connector_barrel_height() / 2,
                    0,
                  ]) {
                    circle(
                      d = cartridge_loose_fit_tolerance() + console_pad_connector_barrel_height() + cartridge_loose_fit_tolerance(),
                      $fn = console_pad_connector_barrel_rounded_sides()
                    );
                  };

                  // The bottom of the square end.
                  translate([
                    console_pad_connector_barrel_width() / 2 - console_pad_connector_barrel_radius(),
                    - console_pad_connector_barrel_height() / 2 + console_pad_connector_barrel_radius(),
                  ]) {
                    circle(
                      r = console_pad_connector_barrel_radius() + cartridge_loose_fit_tolerance(),
                      $fn = console_pad_connector_barrel_radius_sides()
                    );
                  };

                  // The top of the square end.
                  translate([
                    console_pad_connector_barrel_width() / 2 - console_pad_connector_barrel_radius(),
                    console_pad_connector_barrel_height() / 2 - console_pad_connector_barrel_radius(),
                  ]) {
                    circle(
                      r = console_pad_connector_barrel_radius() + cartridge_loose_fit_tolerance(),
                      $fn = console_pad_connector_barrel_radius_sides()
                    );
                  };
                };
              };
            };
          };
        };
      };
    };

    for (rca_jack_position = console_rca_jack_positions()) {
      translate([rca_jack_position[0], rca_jack_position[1], 0]) {
        rotate([0, 0, rca_jack_position[2]]) {
          // Body.
          translate([
            - console_rca_jack_body_width() / 2 - cartridge_loose_fit_tolerance(),
            - console_rca_jack_body_length() - cartridge_loose_fit_tolerance(),
            console_pcb_top(),
          ]) {
            cube([
              cartridge_loose_fit_tolerance() + console_rca_jack_body_width() + cartridge_loose_fit_tolerance(),
              cartridge_loose_fit_tolerance() + console_rca_jack_body_length() + cartridge_loose_fit_tolerance(),
              cartridge_loose_fit_tolerance() + console_rca_jack_body_height() + cartridge_loose_fit_tolerance(),
            ]);
          };

          // Barrel.
          translate([
            0,
            cartridge_loose_fit_tolerance(),
            console_pcb_top() + console_rca_jack_position(),
          ]) {
            rotate([-90, 0, 0]) {
              cylinder(
                d = cartridge_loose_fit_tolerance() + console_rca_jack_diameter() + cartridge_loose_fit_tolerance(),
                $fn = console_rca_jack_sides(),
                h = cartridge_wall_thickness() + cartridge_loose_fit_tolerance()
              );
            };
          };
        };
      };
    };

    for (button_position = console_button_positions()) {
      translate([button_position[0], button_position[1], 0]) {
        rotate([0, 0, button_position[2]]) {
          // Top opening.
          translate([0, 0, console_pcb_top() + console_pcb_to_top()]) {
            linear_extrude(cartridge_wall_thickness()) {
              hull() {
                translate([
                  - console_button_width() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
                  - console_button_length() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
                ]) {
                  circle(
                    r = cartridge_engraving_radius() + console_button_pixel_size() + cartridge_loose_fit_tolerance(),
                    $fn = cartridge_engraving_sides()
                  );
                };

                translate([
                  console_button_width() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
                  - console_button_length() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
                ]) {
                  circle(
                    r = cartridge_engraving_radius() + console_button_pixel_size() + cartridge_loose_fit_tolerance(),
                    $fn = cartridge_engraving_sides()
                  );
                };

                translate([
                  - console_button_width() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
                  console_button_length() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
                ]) {
                  circle(
                    r = cartridge_engraving_radius() + console_button_pixel_size() + cartridge_loose_fit_tolerance(),
                    $fn = cartridge_engraving_sides()
                  );
                };

                translate([
                  console_button_width() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
                  console_button_length() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
                ]) {
                  circle(
                    r = cartridge_engraving_radius() + console_button_pixel_size() + cartridge_loose_fit_tolerance(),
                    $fn = cartridge_engraving_sides()
                  );
                };
              };
            };
          };

          // Lip retainer.
          translate([0, 0, console_pcb_top()]) {
            linear_extrude(console_pcb_to_top()) {
              hull() {
                translate([
                  - console_button_width() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
                  - console_button_length() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
                ]) {
                  circle(
                    r = cartridge_engraving_radius() + console_button_pixel_size() + console_button_lip_width() + cartridge_loose_fit_tolerance(),
                    $fn = cartridge_engraving_sides()
                  );
                };

                translate([
                  console_button_width() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
                  - console_button_length() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
                ]) {
                  circle(
                    r = cartridge_engraving_radius() + console_button_pixel_size() + console_button_lip_width() + cartridge_loose_fit_tolerance(),
                    $fn = cartridge_engraving_sides()
                  );
                };

                translate([
                  - console_button_width() / 2 + console_button_pixel_size() + cartridge_engraving_radius(),
                  console_button_length() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
                ]) {
                  circle(
                    r = cartridge_engraving_radius() + console_button_pixel_size() + console_button_lip_width() + cartridge_loose_fit_tolerance(),
                    $fn = cartridge_engraving_sides()
                  );
                };

                translate([
                  console_button_width() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
                  console_button_length() / 2 - console_button_pixel_size() - cartridge_engraving_radius(),
                ]) {
                  circle(
                    r = cartridge_engraving_radius() + console_button_pixel_size() + console_button_lip_width() + cartridge_loose_fit_tolerance(),
                    $fn = cartridge_engraving_sides()
                  );
                };
              };
            };
          };
        };
      };
    };

    for (led_position = console_led_positions()) {
      translate([
        led_position[0],
        led_position[1],
        console_pcb_top(),
      ]) {
        rotate([0, 0, led_position[2]]) {
          translate([
            - console_led_width() / 2 - cartridge_loose_fit_tolerance() / 2,
            - console_led_length() / 2 - cartridge_loose_fit_tolerance() / 2,
            0,
          ]) {
            cube([
              cartridge_loose_fit_tolerance() + console_led_width() + cartridge_loose_fit_tolerance(),
              cartridge_loose_fit_tolerance() + console_led_length() + cartridge_loose_fit_tolerance(),
              console_pcb_to_top() + cartridge_wall_thickness(),
            ]);
          };
        };
      };
    };

    for (resistor_position = console_resistor_positions()) {
      translate([
        resistor_position[0],
        resistor_position[1],
        console_pcb_top(),
      ]) {
        rotate([0, 0, resistor_position[2]]) {
          translate([
            - console_resistor_width() / 2 - cartridge_loose_fit_tolerance(),
            - console_resistor_length() / 2 - cartridge_loose_fit_tolerance(),
            0,
          ]) {
            cube([
              cartridge_loose_fit_tolerance() + console_resistor_width() + cartridge_loose_fit_tolerance(),
              cartridge_loose_fit_tolerance() + console_resistor_length() + cartridge_loose_fit_tolerance(),
              console_resistor_height() + cartridge_loose_fit_tolerance(),
            ]);
          };
        };
      };
    };

    for (dc_jack_position = console_dc_jack_positions()) {
      translate([
        dc_jack_position[0],
        dc_jack_position[1],
        console_pcb_top(),
      ]) {
        rotate([0, 0, dc_jack_position[2]]) {
          translate([
            - console_dc_jack_body_width() / 2,
            - cartridge_loose_fit_tolerance() - cartridge_loose_fit_tolerance(),
            - cartridge_loose_fit_tolerance(),
          ]) {
            // DC jack face plates.
            cube([
              cartridge_loose_fit_tolerance() + console_dc_jack_body_width() + cartridge_loose_fit_tolerance(),
              cartridge_loose_fit_tolerance() + cartridge_loose_fit_tolerance() + console_dc_jack_face_thickness() + cartridge_loose_fit_tolerance(),
              cartridge_loose_fit_tolerance() + console_dc_jack_face_height() + cartridge_loose_fit_tolerance(),
            ]);

            // DC jack bodies.
            translate([
              cartridge_loose_fit_tolerance() + console_dc_jack_body_width() + cartridge_loose_fit_tolerance(),
              cartridge_loose_fit_tolerance() + console_dc_jack_face_thickness() + cartridge_loose_fit_tolerance() + cartridge_loose_fit_tolerance(),
              0,
            ]) {
              rotate([-90, 180, 0]) {
                linear_extrude(console_dc_jack_body_length() - console_dc_jack_face_thickness()) {
                  square([
                    cartridge_loose_fit_tolerance() + console_dc_jack_body_width() + cartridge_loose_fit_tolerance(),
                    console_dc_jack_body_height() - console_dc_jack_body_width() / 2,
                  ]);

                  translate([
                    cartridge_loose_fit_tolerance() + console_dc_jack_body_width() / 2,
                    console_dc_jack_body_height() - console_dc_jack_body_width() / 2,
                  ]) {
                    circle(
                      d = cartridge_loose_fit_tolerance() + console_dc_jack_body_width() + cartridge_loose_fit_tolerance(),
                      $fn = console_dc_jack_sides()
                    );
                  };
                };
              };
            };
          };
        };
      };
    };
  };
};
