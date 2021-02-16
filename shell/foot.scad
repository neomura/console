use <../submodules/neomura/cartridge/measurements.scad>;
use <foot-measurements.scad>;

cylinder(
  d = console_foot_diameter(),
  h = console_foot_protrusion() + console_foot_embed(),
  $fn = console_foot_sides()
);
