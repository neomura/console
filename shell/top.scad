use <../submodules/neomura/cartridge/measurements.scad>;
use <../submodules/neomura/logo/logo.scad>;
use <pad-connector-measurements.scad>;
use <pcb-measurements.scad>;
use <outer-measurements.scad>;
use <rca-jack-measurements.scad>;
use <unsplit.scad>;
use <button-measurements.scad>;
use <dc-jack-measurements.scad>;

intersection() {
  difference() {
    union() {
      // The main block.
      translate([
        console_outer_left(),
        console_outer_near(),
        console_pcb_top() + console_rca_jack_position(),
      ]) {
        cube([
          - console_outer_left() + console_outer_right(),
          - console_outer_near() + console_outer_far(),
          10000,
        ]);
      };

      // Support for PCB.
      translate([
        console_pcb_left() - cartridge_pcb_tolerance() + cartridge_friction_fit_tolerance(),
        console_pcb_near() - cartridge_pcb_tolerance() + cartridge_friction_fit_tolerance(),
        console_pcb_top() + 0.001,
      ]) {
        cube([
          - cartridge_friction_fit_tolerance() + cartridge_pcb_tolerance() - console_pcb_left() + console_pcb_right() + cartridge_pcb_tolerance() - cartridge_friction_fit_tolerance(),
          - cartridge_friction_fit_tolerance() + cartridge_pcb_tolerance() - console_pcb_near() + console_pcb_far() + cartridge_pcb_tolerance() - cartridge_friction_fit_tolerance(),
          console_pcb_to_top(),
        ]);
      };
    };

    // Top engravings.
    translate([
      0,
      0,
      console_pcb_top() + console_pcb_to_top() + cartridge_wall_thickness() - cartridge_engraving_depth(),
    ]) {
      linear_extrude(cartridge_engraving_depth() + 0.001) {
        translate([0, -22]) {
          difference() {
            hull() {
              translate([16.75, cartridge_logo_height() / 2]) {
                circle(r = cartridge_engraving_radius(), $fn = cartridge_engraving_sides());
              };

              translate([16.75, - cartridge_logo_height() / 2]) {
                circle(r = cartridge_engraving_radius(), $fn = cartridge_engraving_sides());
              };

              translate([-16.75, cartridge_logo_height() / 2]) {
                circle(r = cartridge_engraving_radius(), $fn = cartridge_engraving_sides());
              };

              translate([-16.75, - cartridge_logo_height() / 2]) {
                circle(r = cartridge_engraving_radius(), $fn = cartridge_engraving_sides());
              };
            };

            logo(cartridge_logo_height(), 0.075);
          };
        };

        console_edge_badge([
          console_pad_connector_positions()[0][0],
          console_outer_near(),
          0,
        ]) {
          // Bottom.
          translate([
            console_button_pixel_size(),
            0,
          ]) {
            square([
              console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Vertical bar.
          translate([
            console_button_pixel_size() * 3,
            console_button_pixel_size(),
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 6 + console_button_pixel_push() * 2,
            ]);
          };

          // Upper top left.
          translate([
            console_button_pixel_size() * 2,
            console_button_pixel_size() * 6,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Lower top left.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 5,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };
        };

        console_edge_badge([
          console_pad_connector_positions()[1][0],
          console_outer_near(),
          0,
        ]) {
          // Bottom.
          translate([
            console_button_pixel_size(),
            0,
          ]) {
            square([
              console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom left.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size(),
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
            ]);
          };

          // Horizontal bar.
          translate([
            console_button_pixel_size() * 2,
            console_button_pixel_size() * 3,
          ]) {
            square([
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Top right.
          translate([
            console_button_pixel_size() * 5,
            console_button_pixel_size() * 4,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
            ]);
          };

          // Top.
          translate([
            console_button_pixel_size() * 2,
            console_button_pixel_size() * 6,
          ]) {
            square([
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Top left.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 5,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };
        };

        console_edge_badge([
          console_pad_connector_positions()[2][0],
          console_outer_near(),
          0,
        ]) {
          // Top left.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 5,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom left.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size(),
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom.
          translate([
            console_button_pixel_size() * 2,
            0,
          ]) {
            square([
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom.
          translate([
            console_button_pixel_size() * 2,
            console_button_pixel_size() * 6,
          ]) {
            square([
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom right.
          translate([
            console_button_pixel_size() * 5,
            console_button_pixel_size(),
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
            ]);
          };

          // Top right.
          translate([
            console_button_pixel_size() * 5,
            console_button_pixel_size() * 4,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
            ]);
          };

          // Horizontal bar.
          translate([
            console_button_pixel_size() * 3,
            console_button_pixel_size() * 3,
          ]) {
            square([
              console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };
        };

        console_edge_badge([
          console_pad_connector_positions()[3][0],
          console_outer_near(),
          0,
        ]) {
          // Vertical bar.
          translate([
            console_button_pixel_size() * 5,
            0,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 7 + console_button_pixel_push() * 2,
            ]);
          };

          // Horizontal bar.
          translate([
            console_button_pixel_size() * 2,
            console_button_pixel_size() * 3,
          ]) {
            square([
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Left.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 4,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
            ]);
          };
        };

        // Power symbol.
        console_edge_badge(console_dc_jack_positions()[0]) {
          // Bottom top.
          translate([
            console_button_pixel_size() * 4,
            console_button_pixel_size() * 6,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom middle.
          translate([
            console_button_pixel_size() * 3,
            console_button_pixel_size() * 5,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom bottom.
          translate([
            console_button_pixel_size() * 2,
            console_button_pixel_size() * 4,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Horizontal bar.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 3,
          ]) {
            square([
              console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom top.
          translate([
            console_button_pixel_size() * 4,
            console_button_pixel_size() * 2,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom middle.
          translate([
            console_button_pixel_size() * 3,
            console_button_pixel_size(),
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom bottom.
          translate([
            console_button_pixel_size() * 2,
            0,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };
        };

        // Video symbol.
        console_edge_badge([console_rca_jack_positions()[2][0], console_dc_jack_positions()[0][1], console_dc_jack_positions()[0][2]]) {
          // Bottom.
          translate([
            console_button_pixel_size(),
            0,
          ]) {
            square([
              console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Left.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size(),
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
            ]);
          };

          // Right.
          translate([
            console_button_pixel_size() * 5,
            console_button_pixel_size(),
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
            ]);
          };

          // Bottom.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 4,
          ]) {
            square([
              console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Aerial base.
          translate([
            console_button_pixel_size() * 3,
            console_button_pixel_size() * 5,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Aerial left.
          translate([
            console_button_pixel_size() * 2,
            console_button_pixel_size() * 6,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Aerial right.
          translate([
            console_button_pixel_size() * 4,
            console_button_pixel_size() * 6,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };
        };

        // Left audio symbol.
        console_edge_badge([console_rca_jack_positions()[1][0], console_dc_jack_positions()[0][1], console_dc_jack_positions()[0][2]]) {
          // Cone left.
          translate([
            console_button_pixel_size() * 4,
            console_button_pixel_size() * 2,
          ]) {
            square([
              console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
            ]);
          };

          // Cone right.
          translate([
            console_button_pixel_size() * 3,
            console_button_pixel_size(),
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
            ]);
          };

          // Noise bottom.
          translate([
            console_button_pixel_size(),
            0,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Noise bottom middle.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 2,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Noise top middle.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 4,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Noise top.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 6,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };
        };

        // Right audio symbol.
        console_edge_badge([console_rca_jack_positions()[0][0], console_dc_jack_positions()[0][1], console_dc_jack_positions()[0][2]]) {
          // Cone left.
          translate([
            console_button_pixel_size(),
            console_button_pixel_size() * 2,
          ]) {
            square([
              console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
              console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
            ]);
          };

          // Cone right.
          translate([
            console_button_pixel_size() * 3,
            console_button_pixel_size(),
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
            ]);
          };

          // Noise bottom.
          translate([
            console_button_pixel_size() * 5,
            0,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Noise bottom middle.
          translate([
            console_button_pixel_size() * 5,
            console_button_pixel_size() * 2,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Noise top middle.
          translate([
            console_button_pixel_size() * 5,
            console_button_pixel_size() * 4,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };

          // Noise top.
          translate([
            console_button_pixel_size() * 5,
            console_button_pixel_size() * 6,
          ]) {
            square([
              console_button_pixel_size() + console_button_pixel_push() * 2,
              console_button_pixel_size() + console_button_pixel_push() * 2,
            ]);
          };
        };
      };
    };

    translate([
      30.5,
      1.5,
      console_pcb_top() + cartridge_pcb_tolerance() + cartridge_version_stamp_height(),
    ]) {
      rotate([0, 180, 270]) {
        cartridge_version_stamp("CONSOLE SHELL", "TOP V0.0.0");
  };
    };

  };

  console_unsplit();
};
