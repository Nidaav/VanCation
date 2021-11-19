const computeTotalPrice = () => {
  const initialPriceElement = document.querySelector(".price-van-show")
  const initialPrice = parseInt(initialPriceElement.dataset.price)

  const initialDateElement = document.querySelector("#initialDate")
  const initialDate = new Date(Date.parse(initialDateElement.value))
  console.log(initialDateElement.value, initialDate)

  const endingDateElement = document.querySelector("#endingDate")
  const endingDate = new Date(Date.parse(endingDateElement.value))

  const totalTime = (endingDate - initialDate) / (24 * 60 * 60 * 1_000) + 1
  console.log(totalTime)
  const totalPrice = totalTime * initialPrice

  const totalPriceCounter = document.querySelector(".total_price_counter")
  totalPriceCounter.innerText = totalPrice
}
const totalPrice = () => {
  const initialDateElement = document.querySelector("#initialDate")
  const endingDateElement = document.querySelector("#endingDate")
  if (!initialDateElement) return

  initialDateElement.addEventListener("change", computeTotalPrice)
  endingDateElement.addEventListener("change", computeTotalPrice)
}
export {totalPrice}
