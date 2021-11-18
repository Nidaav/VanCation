const deleteRedMarker = () => {
  const markers = document.querySelectorAll('.mapboxgl-marker')
  markers.forEach(marker => {
    marker.classList.remove("marker-red")
  });
}


const selectMarker = (event) => {
  deleteRedMarker();
  const cardHover = event.currentTarget
  const cardId = cardHover.dataset.vanId
  const marker = document.getElementById(`marker-${cardId}`)
  marker.classList.add("marker-red")
  console.log(marker)
}

const animationMarker = () => {
  const mapElement = document.getElementById('container-map')
  if (mapElement) {
    const vansCards = document.querySelectorAll('.card-vans')

    vansCards.forEach((card) => {
      card.addEventListener("mouseenter", selectMarker)
      card.addEventListener("mouseleave", deleteRedMarker)
    })
  }
}

export { animationMarker }
