import { type IconDefinition, type IconName, type IconPrefix } from "@fortawesome/fontawesome-svg-core";

export const halfStarIcon: IconDefinition = {
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
        "M16.5 5L14.651 8.515C14.5204 8.77186 14.3313 8.99449 14.099 9.165C13.8656 9.33638 13.5954 9.45107 13.31 9.5L9.5 10.247L12.16 13.428C12.5238 13.8267 12.6954 14.3643 12.63 14.9L12.124 19L15.632 17.3C15.9026 17.1689 16.1993 17.1006 16.5 17.1",
      ],
      iconName: "half-star-tight" as IconName,
      prefix: "custom-icons" as IconPrefix
  };

  
/*

<star-rating stars=5 rating="3.5"
             bgcolor="green" nocolor="grey" color="gold"></star-rating>
<star-rating stars=7 rating="50%"
             bgcolor="rebeccapurple" nocolor="beige" color="goldenrod"></star-rating>
<script>
  document.addEventListener("click", (evt) => console.log(evt.target.getAttribute("n")))

  customElements.define("star-rating", class extends HTMLElement {
    set rating( rate ) {
      if (!String(rate).includes("%")) rate = Number(rate) / this.stars * 100 + "%";
      this.querySelector("#rating").setAttribute("width", rate);
    }
    connectedCallback() {
      let { bgcolor, stars, nocolor, color, rating } = this.attributes;
      this.stars = ~~stars.value || 5;
      this.innerHTML = 
        `<svg viewBox="0 0 ${this.stars*100} 100" style="cursor:pointer;width:300px">`
      + `<rect width="100%" height="100" fill="${nocolor.value}"/>`
      + `<rect id="rating"  height="100" fill="${color.value}"  />`
        + Array(  this.stars     ).fill()
               .map((i, n) => `<path fill="${bgcolor.value}" d="M${ n*100 } 0h102v100h-102v-100m91 42a6 6 90 00-4-10l-22-1a1 1 90 01-1 0l-8-21a6 6 90 00-11 0l-8 21a1 1 90 01-1 1l-22 1a6 6 90 00-4 10l18 14a1 1 90 010 1l-6 22a6 6 90 008 6l19-13a1 1 90 011 0l19 13a6 6 90 006 0a6 6 90 002-6l-6-22a1 1 90 010-1z"/>`)
               .join("")
        + Array(  this.stars * 2 ).fill()
               .map((i, n) => `<rect x="${ n*50 }" n="${n}" opacity="0" width="50" height="100"`
                  + ` onclick="dispatchEvent(new Event('click'))" `
                  + ` onmouseover="this.closest('star-rating').rating = ${(n+1)/2}"/>`)
              .join("") 
      + "</svg>";

      this.rating = rating.value;
    }
  });
</script>
*/