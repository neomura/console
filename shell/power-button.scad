use <../submodules/neomura/cartridge/measurements.scad>;
use <button-measurements.scad>;

console_button() {
  translate([
    - console_button_pixel_push() - console_button_pixel_size() * 20,
    - console_button_pixel_push() - cartridge_logo_height() / 2,
  ]) {
    // P.
    // ---------------------------------------------------------------------------

    // Left edge.
    translate([
      0,
      console_button_pixel_size() * -3,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 10 + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom left corner.
    translate([
      console_button_pixel_size(),
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom edge.
    translate([
      console_button_pixel_size() * 2,
      0,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
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

    // Bottom right corner.
    translate([
      console_button_pixel_size() * 5,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
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

    // Right edge.
    translate([
      console_button_pixel_size() * 6,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
      ]);
    };

    // O.
    // ---------------------------------------------------------------------------

    // Left edge.
    translate([
      console_button_pixel_size() * 8,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom left corner.
    translate([
      console_button_pixel_size() * 9,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top left corner.
    translate([
      console_button_pixel_size() * 9,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom right corner.
    translate([
      console_button_pixel_size() * 13,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top right corner.
    translate([
      console_button_pixel_size() * 13,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Right edge.
    translate([
      console_button_pixel_size() * 14,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom edge.
    translate([
      console_button_pixel_size() * 10,
      0,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top edge.
    translate([
      console_button_pixel_size() * 10,
      console_button_pixel_size() * 6,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // W.
    // ---------------------------------------------------------------------------

    // Top left edge.
    translate([
      console_button_pixel_size() * 16,
      console_button_pixel_size() * 3,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 4 + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom left left edge.
    translate([
      console_button_pixel_size() * 17,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom bottom left edge.
    translate([
      console_button_pixel_size() * 18,
      0,
    ]) {
      square([
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Crest.
    translate([
      console_button_pixel_size() * 20,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom bottom right edge.
    translate([
      console_button_pixel_size() * 21,
      0,
    ]) {
      square([
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom right right edge.
    translate([
      console_button_pixel_size() * 23,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };

    // Top right edge.
    translate([
      console_button_pixel_size() * 24,
      console_button_pixel_size() * 3,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 4 + console_button_pixel_push() * 2,
      ]);
    };

    // E.
    // ---------------------------------------------------------------------------

    // Left edge.
    translate([
      console_button_pixel_size() * 26,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
      ]);
    };

    // Horizontal bar.
    translate([
      console_button_pixel_size() * 27,
      console_button_pixel_size() * 3,
    ]) {
      square([
        console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top left corner.
    translate([
      console_button_pixel_size() * 27,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top edge.
    translate([
      console_button_pixel_size() * 28,
      console_button_pixel_size() * 6,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom left corner.
    translate([
      console_button_pixel_size() * 27,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom edge.
    translate([
      console_button_pixel_size() * 28,
      0,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom right corner.
    translate([
      console_button_pixel_size() * 31,
      console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top right corner.
    translate([
      console_button_pixel_size() * 31,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Right edge.
    translate([
      console_button_pixel_size() * 32,
      console_button_pixel_size() * 3,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };

    // R.
    // ---------------------------------------------------------------------------

    // Left edge.
    translate([
      console_button_pixel_size() * 34,
      0,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 7 + console_button_pixel_push() * 2,
      ]);
    };

    // Top left corner.
    translate([
      console_button_pixel_size() * 35,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top edge.
    translate([
      console_button_pixel_size() * 36,
      console_button_pixel_size() * 6,
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Top right corner.
    translate([
      console_button_pixel_size() * 39,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
  };
};
