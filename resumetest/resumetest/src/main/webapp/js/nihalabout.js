// Function to Enlarge Image on Click
function enlargeImage(element) {
    element.querySelector("img").style.transform = "scale(1.5)";
    setTimeout(() => {
        element.querySelector("img").style.transform = "scale(1)";
    }, 1000);
}
