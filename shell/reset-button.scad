use <../submodules/neomura/cartridge/measurements.scad>;
use <button-measurements.scad>;

console_button() {
  translate([
    - console_button_pixel_push() - console_button_pixel_size() * 18,
    - console_button_pixel_push() - cartridge_logo_height() / 2,
  ]) {
    // R.
    // -------------------------------------------------------------------------

    // Left edge.
    translate([
      0,
      0,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 7 + console_button_pixel_push() * 2,
      ]);
    };

    // Top left corner.
    translate([
      console_button_pixel_size(),
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top edge.
    translate([
      console_button_pixel_size() * 2,
      console_button_pixel_size() * 6,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top right corner.
    translate([
      console_button_pixel_size() * 5,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // E.
    // -------------------------------------------------------------------------

    // Left edge.
    translate([
      console_button_pixel_size() * 7,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
      ]);
    };

    // Horizontal bar.
    translate([
      console_button_pixel_size() * 8,
      console_button_pixel_size() * 3,
    ]) {
      square([
        console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top left corner.
    translate([
      console_button_pixel_size() * 8,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top edge.
    translate([
      console_button_pixel_size() * 9,
      console_button_pixel_size() * 6,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom left corner.
    translate([
      console_button_pixel_size() * 8,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom edge.
    translate([
      console_button_pixel_size() * 9,
      0,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom right corner.
    translate([
      console_button_pixel_size() * 12,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top right corner.
    translate([
      console_button_pixel_size() * 12,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Right edge.
    translate([
      console_button_pixel_size() * 13,
      console_button_pixel_size() * 3,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };

    // S.
    // -------------------------------------------------------------------------

    // Bottom left corner.
    translate([
      console_button_pixel_size() * 15,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom horizontal bar.
    translate([
      console_button_pixel_size() * 16,
      0,
    ]) {
      square([
        console_button_pixel_size() * 4 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom right corner.
    translate([
      console_button_pixel_size() * 20,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };

    // Middle horizontal bar.
    translate([
      console_button_pixel_size() * 16,
      console_button_pixel_size() * 3,
    ]) {
      square([
        console_button_pixel_size() * 4 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom left corner.
    translate([
      console_button_pixel_size() * 15,
      console_button_pixel_size() * 4,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };

    // Top horizontal bar.
    translate([
      console_button_pixel_size() * 16,
      console_button_pixel_size() * 6,
    ]) {
      square([
        console_button_pixel_size() * 4 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top horizontal bar.
    translate([
      console_button_pixel_size() * 20,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // E.
    // -------------------------------------------------------------------------

    // Left edge.
    translate([
      console_button_pixel_size() * 22,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
      ]);
    };

    // Horizontal bar.
    translate([
      console_button_pixel_size() * 23,
      console_button_pixel_size() * 3,
    ]) {
      square([
        console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top left corner.
    translate([
      console_button_pixel_size() * 23,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top edge.
    translate([
      console_button_pixel_size() * 24,
      console_button_pixel_size() * 6,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom left corner.
    translate([
      console_button_pixel_size() * 23,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom edge.
    translate([
      console_button_pixel_size() * 24,
      0,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom right corner.
    translate([
      console_button_pixel_size() * 27,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top right corner.
    translate([
      console_button_pixel_size() * 27,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Right edge.
    translate([
      console_button_pixel_size() * 28,
      console_button_pixel_size() * 3,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };

    // T.
    // -------------------------------------------------------------------------

    // Left edge.
    translate([
      console_button_pixel_size() * 30,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 7 + console_button_pixel_push() * 2,
      ]);
    };

    // Horizontal bar.
    translate([
      console_button_pixel_size() * 31,
      console_button_pixel_size() * 6,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom left corner.
    translate([
      console_button_pixel_size() * 31,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom edge.
    translate([
      console_button_pixel_size() * 32,
      0,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom right corner.
    translate([
      console_button_pixel_size() * 35,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
  };
};
