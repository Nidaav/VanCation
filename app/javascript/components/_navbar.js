import TweenMax from "gsap";

const toggleClassActiveOnNavbar = () => {
  const logDisplay = document.querySelector(".log")
  const hamburger = document.querySelector(".fa-bars")
  const containerUser = document.querySelector(".container-user")


  hamburger.addEventListener("click", (e) => {
    console.log(logDisplay.style.display)
    if (logDisplay.style.display === "none") {
      logDisplay.style.display = 'block';
      TweenMax.from(".log-d-flex", 0.4, {
        delay: 0,
        opacity: 0,
        y: -80,
        ease: "power1.out",
      })
    } else {
      logDisplay.style.display = 'none';
    }
  })
}

export { toggleClassActiveOnNavbar };
