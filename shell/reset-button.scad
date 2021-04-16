use <../submodules/neomura/cartridge/measurements.scad>;
use <button-measurements.scad>;

console_button() {
  translate([
    - console_button_pixel_push(),
    - console_button_pixel_push(),
  ]) {    
    // Arrow left.
    translate([
      console_button_pixel_size() * -6,
      0,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };  
    
    // Arrow right.
    translate([
      console_button_pixel_size() * -2,
      0,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };  

    // Arrow crossbar.
    translate([
      console_button_pixel_size() * -5,
      - console_button_pixel_size(),
    ]) {
      square([
        console_button_pixel_size() * 3 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };      
      
    // Left.
    translate([
      console_button_pixel_size() * -4,
      console_button_pixel_size() * -2,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 6 + console_button_pixel_push() * 2,
      ]);
    };
      
    // Top left.
    translate([
      console_button_pixel_size() * -3,
      console_button_pixel_size() * 4,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
      
    // Top.
    translate([
      console_button_pixel_size() * -2,
      console_button_pixel_size() * 5,
    ]) {
      square([
        console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
      
    // Top right.
    translate([
      console_button_pixel_size() * 3,
      console_button_pixel_size() * 4,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
      
    // Right.
    translate([
      console_button_pixel_size() * 4,
      console_button_pixel_size() * -4,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() * 8 + console_button_pixel_push() * 2,
      ]);
    };
    
    // Bottom right.
    translate([
      console_button_pixel_size() * 3,
      console_button_pixel_size() * -5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
    
    // Bottom.
    translate([
      console_button_pixel_size() * -2,
      console_button_pixel_size() * -6,
    ]) {
      square([
        console_button_pixel_size() * 5 + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
    
    // Bottom left.
    translate([
      console_button_pixel_size() * -3,
      console_button_pixel_size() * -5,
    ]) {
      square([
        console_button_pixel_size() + console_button_pixel_push() * 2,
        console_button_pixel_size() + console_button_pixel_push() * 2,
      ]);
    };
  };
};
