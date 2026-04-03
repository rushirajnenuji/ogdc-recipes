# Arctic Woody Plant Dominance Greenland

This recipe takes the Greenland-relevant tiles (A3, B2, B3) from the
[Arctic Tundra Plant and Woody Plant Aboveground Biomass, Pan-Arctic,
2020](https://arcticdata.io/catalog/view/doi:10.18739/A2NS0M06B) dataset,
merges them into a single raster, and clips the result to the QGreenland
extent in EPSG:3413. The output represents woody plant dominance, derived
as (woody plant biomass / plant biomass) * 100, at 30-meter resolution.
Values indicate the percentage of total plant aboveground biomass
attributable to woody plants (tree, shrub).
