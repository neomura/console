use <../submodules/neomura/cartridge/measurements.scad>;
use <button-measurements.scad>;

console_button() {
  translate([
    - console_button_pixel_push(),
    - console_button_pixel_push(),
  ]) {    
    // Bottom.
    translate([
      console_button_pixel_size() * -2,
      console_button_pixel_size() * -7,
    ]) {
      square([
        console_button_pixel_size() * 4 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
    
    // Bottom bottom left.
    translate([
      console_button_pixel_size() * -4,
      console_button_pixel_size() * -6,
    ]) {
      square([
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom left.
    translate([
      console_button_pixel_size() * -5,
      console_button_pixel_size() * -5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
    
    // Bottom left left.
    translate([
      console_button_pixel_size() * -6,
      console_button_pixel_size() * -4,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };
    
    // Left.
    translate([
      console_button_pixel_size() * -7,
      console_button_pixel_size() * -2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 4 + console_button_pixel_push() * 2,
      ]);
    };
    
    // Top left left.
    translate([
      console_button_pixel_size() * -6,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };
    
    // Top left.
    translate([
      console_button_pixel_size() * -5,
      console_button_pixel_size() * 4,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
    
    // Top top left.
    translate([
      console_button_pixel_size() * -4,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
    
    // Top bar.
    translate([
      console_button_pixel_size() * -0.5,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
      ]);
    };
    
    // Bottom bottom right.
    translate([
      console_button_pixel_size() * 2,
      console_button_pixel_size() * -6,
    ]) {
      square([
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };

    // Bottom right.
    translate([
      console_button_pixel_size() * 4,
      console_button_pixel_size() * -5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
    
    // Bottom right right.
    translate([
      console_button_pixel_size() * 5,
      console_button_pixel_size() * -4,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };
    
    // Right.
    translate([
      console_button_pixel_size() * 6,
      console_button_pixel_size() * -2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 4 + console_button_pixel_push() * 2,
      ]);
    };
    
    // Top right right.
    translate([
      console_button_pixel_size() * 5,
      console_button_pixel_size() * 2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
      ]);
    };
    
    // Top right.
    translate([
      console_button_pixel_size() * 4,
      console_button_pixel_size() * 4,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
    
    // Top top right.
    translate([
      console_button_pixel_size() * 2,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() * 2 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
  };
};
