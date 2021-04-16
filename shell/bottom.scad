use <../submodules/neomura/cartridge/measurements.scad>;
use <../submodules/neomura/cartridge/slot/vertical/solder-joint-cutout.scad>;
use <pad-connector-measurements.scad>;
use <pcb-measurements.scad>;
use <outer-measurements.scad>;
use <rca-jack-measurements.scad>;
use <unsplit.scad>;
use <resistor-measurements.scad>;
use <led-measurements.scad>;
use <dc-jack-measurements.scad>;
use <button-measurements.scad>;
use <foot-measurements.scad>;
use <label-measurements.scad>;
use <slot-measurements.scad>;

intersection() {
  difference() {
    // The main block.
    translate([
      console_outer_left(),
      console_outer_near(),
      0,
    ]) {
      cube([
        - console_outer_left() + console_outer_right(),
        - console_outer_near() + console_outer_far(),
        console_pcb_top() + console_rca_jack_position(),
      ]);
    };

    // Cutout for PCB.
    translate([
      console_pcb_left() - cartridge_pcb_tolerance(),
      console_pcb_near() - cartridge_pcb_tolerance(),
      console_pcb_bottom(),
    ]) {
      cube([
        cartridge_pcb_tolerance() - console_pcb_left() + console_pcb_right() + cartridge_pcb_tolerance(),
        cartridge_pcb_tolerance() - console_pcb_near() + console_pcb_far() + cartridge_pcb_tolerance(),
        cartridge_pcb_tolerance() + cartridge_pcb_thickness() + cartridge_pcb_tolerance() + console_pcb_to_top(),
      ]);
    };

    // Cutouts for feet.
    linear_extrude(console_foot_embed()) {
      translate([
        console_outer_left() + console_foot_margin() + console_foot_diameter() / 2,
        console_outer_near() + console_foot_margin() + console_foot_diameter() / 2,
      ]) {
        circle(
          d = console_foot_tolerance() + console_foot_diameter() + console_foot_tolerance(),
          $fn = console_foot_sides()
        );
      };

      translate([
        console_outer_right() - console_foot_margin() - console_foot_diameter() / 2,
        console_outer_near() + console_foot_margin() + console_foot_diameter() / 2,
      ]) {
        circle(
          d = console_foot_tolerance() + console_foot_diameter() + console_foot_tolerance(),
          $fn = console_foot_sides()
        );
      };

      translate([
        console_outer_left() + console_foot_margin() + console_foot_diameter() / 2,
        console_outer_far() - console_foot_margin() - console_foot_diameter() / 2,
      ]) {
        circle(
          d = console_foot_tolerance() + console_foot_diameter() + console_foot_tolerance(),
          $fn = console_foot_sides()
        );
      };

      translate([
        console_outer_right() - console_foot_margin() - console_foot_diameter() / 2,
        console_outer_far() - console_foot_margin() - console_foot_diameter() / 2,
      ]) {
        circle(
          d = console_foot_tolerance() + console_foot_diameter() + console_foot_tolerance(),
          $fn = console_foot_sides()
        );
      };
    };

    // Solder joint cutouts.
    translate([
      0,
      0,
      console_pcb_bottom() - console_pcb_to_bottom(),
    ]) {
      linear_extrude(console_pcb_to_bottom() + cartridge_pcb_tolerance() + cartridge_pcb_thickness()) {
        translate([
          console_slot_x(),
          console_slot_y(),
        ]) {
          cartridge_slot_vertical_solder_joint_cutout();
        };

        for (pad_position = console_pad_connector_positions()) {
          translate([
            pad_position[0],
            pad_position[1],
          ]) {
            rotate(pad_position[2]) {
              translate([0, cartridge_wall_thickness(), 0]) {
                translate([
                  - cartridge_loose_fit_tolerance() + console_pad_connector_terminals_width() / -2,
                  - console_pad_connector_terminals_length() - console_pad_connector_length() - cartridge_loose_fit_tolerance(),
                ]) {
                  square([
                    cartridge_loose_fit_tolerance() + console_pad_connector_terminals_width() + cartridge_loose_fit_tolerance(),
                    console_pad_connector_terminals_length(),
                  ]);
                };

                translate([
                  console_pad_connector_peg_spacing() / -2,
                  - console_pad_connector_peg_inset(),
                ]) {
                  circle(
                    d = console_pad_connector_peg_diameter(),
                    $fn = console_pad_connector_peg_sides()
                  );
                };

                translate([
                  console_pad_connector_peg_spacing() / 2,
                  - console_pad_connector_peg_inset(),
                ]) {
                  circle(
                    d = console_pad_connector_peg_diameter(),
                    $fn = console_pad_connector_peg_sides()
                  );
                };
              };
            };
          };
        };

        for (button_position = console_button_positions()) {
          translate([button_position[0], button_position[1]]) {
            rotate(button_position[2]) {
              translate([
                - (cartridge_pad_spacing() / 2 + console_button_body_width() + cartridge_pad_spacing() / 2) / 2,
                - (cartridge_pad_spacing() / 2 + console_button_body_length() + cartridge_pad_spacing() / 2) / 2,
              ]) {
                square([
                  cartridge_pad_spacing() / 2 + console_button_body_width() + cartridge_pad_spacing() / 2,
                  cartridge_pad_spacing() / 2 + console_button_body_length() + cartridge_pad_spacing() / 2,
                ]);
              };
            };
          };
        };

        for (led_position = console_led_positions()) {
          translate([led_position[0], led_position[1]]) {
            rotate(led_position[2]) {
              translate([
                - console_led_width() / 2,
                - console_led_length() / 2,
              ]) {
                square([console_led_width(), console_led_length()]);
              };
            };
          };
        };

        for (resistor_position = console_resistor_positions()) {
          translate([resistor_position[0], resistor_position[1]]) {
            rotate(resistor_position[2]) {
              translate([
                - console_resistor_width() / 2,
                - console_resistor_length() / 2,
              ]) {
                square([
                  console_resistor_width(),
                  console_resistor_length(),
                ]);
              };
            };
          };
        };

        for (dc_jack_position = console_dc_jack_positions()) {
          translate([dc_jack_position[0], dc_jack_position[1]]) {
            rotate(dc_jack_position[2]) {
              for (pad_position = console_dc_jack_pad_positions()) {
                translate(pad_position) {
                  square(console_dc_jack_pad_diameter(), center = true);
                };
              };
            };
          };
        };

        for (rca_jack_position = console_rca_jack_positions()) {
          translate([rca_jack_position[0], rca_jack_position[1]]) {
            rotate(rca_jack_position[2]) {
              translate([
                - cartridge_loose_fit_tolerance() -console_rca_jack_body_width() / 2,
                -console_rca_jack_pocket_length(),
              ]) {
                square([
                  cartridge_loose_fit_tolerance() + console_rca_jack_body_width() + cartridge_loose_fit_tolerance(),
                  console_rca_jack_pocket_length() + cartridge_loose_fit_tolerance(),
                ]);
              };

              for (pad_position = console_rca_jack_pad_positions()) {
                translate(pad_position) {
                  square(console_rca_jack_pad_diameter(), center = true);
                };
              };
            };
          };
        };
      };
    };

    // Label.
    linear_extrude(cartridge_engraving_depth()) {
      hull() {
        translate([
          console_label_width() / 2 - console_label_radius(),
          (console_outer_near() + console_outer_far() + console_label_height()) / 2 - console_label_radius(),
        ]) {
          circle(
            r = console_label_radius(),
            $fn = cartridge_engraving_sides()
          );
        };

        translate([
          - console_label_width() / 2 + console_label_radius(),
          (console_outer_near() + console_outer_far() + console_label_height()) / 2 - console_label_radius(),
        ]) {
          circle(
            r = console_label_radius(),
            $fn = cartridge_engraving_sides()
          );
        };

        translate([
          console_label_width() / 2 - console_label_radius(),
          (console_outer_near() + console_outer_far() - console_label_height()) / 2 + console_label_radius(),
        ]) {
          circle(
            r = console_label_radius(),
            $fn = cartridge_engraving_sides()
          );
        };

        translate([
          - console_label_width() / 2 + console_label_radius(),
          (console_outer_near() + console_outer_far() - console_label_height()) / 2 + console_label_radius(),
        ]) {
          circle(
            r = console_label_radius(),
            $fn = cartridge_engraving_sides()
          );
        };
      };
    };

    translate([
      0,
      8,
      console_pcb_bottom() - cartridge_version_stamp_height(),
    ]) {
      cartridge_version_stamp("CONSOLE SHELL", "BOTTOM V0.0.0");
    };
  };

  console_unsplit();
};
