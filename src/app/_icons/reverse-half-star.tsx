import {
  type IconDefinition,
  type IconName,
  type IconPrefix,
} from "@fortawesome/fontawesome-svg-core";

export const reverseHalfStarIcon: IconDefinition = {
  icon: [
    // SVG viewbox width (in pixels)
    9,

    // SVG viewbox height (in pixels)
    18,

    // Aliases (not needed)
    [],

    // Unicode as hex value (not needed)
    "",

    // SVG path data
    "M8.5 5L10.349 8.515C10.4796 8.77186 10.6687 8.99449 10.901 9.165C11.1344 9.33638 11.4046 9.45107 11.69 9.5L15.5 10.247L12.84 13.428C12.4762 13.8267 12.3046 14.3643 12.37 14.9L12.876 19L9.368 17.3C9.0974 17.1689 8.8007 17.1006 8.5 17.1",
  ],
  iconName: "reverse-half-star-tight" as IconName,
  prefix: "custom-icons" as IconPrefix,
};
