// You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

// Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.

var canPlaceFlowers = function (flowerbed, n) {
  if (flowerbed.length === 1 && flowerbed[0] === 0) return true
  for (let i = 0; i < flowerbed.length; i++) {
    if (flowerbed[i] === 0 && n > 0) {
      if (i === 0 && flowerbed[i + 1] === 0) {
        flowerbed[i] = 1
        n--
      } else if (i === flowerbed.length - 1 && flowerbed[i - 1] === 0) {
        flowerbed[i] = 1
        n--
      } else {
        if (flowerbed[i - 1] === 0 && flowerbed[i + 1] === 0) {
          flowerbed[i] = 1
          n--
        }
      }
    }
  }
  return n === 0 ? true : false
}

// tests
// console.log(canPlaceFlowers([0,0], 1))
// console.log(canPlaceFlowers([0], 1))
// console.log(canPlaceFlowers([0,0,0], 1))
// console.log(canPlaceFlowers([0,0], 1))
// console.log(canPlaceFlowers([1,0,0], 1))
// console.log(canPlaceFlowers([1,0,0,0,0,1], 2))
// console.log(canPlaceFlowers([0, 0, 1, 0, 0], 1))
