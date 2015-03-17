$ ->

  do ->

    getRandomInt = (min, max) ->
      Math.floor(Math.random() * (max - min + 1)) + min

    getRandomKey = (arr) ->
      arr[getRandomInt(0, arr.length - 1)]

    getArrKey = (obj) ->
      keyArr = []
      for keyItem of obj
        keyArr.push keyItem

      return keyArr

  # dynamic image
    imagePaths =
      animals: [
        "bird.jpg", "cat.jpg", "dog.jpg"
        "elephant_01.jpg", "elephant_02.jpg", "elephant_03.jpg"
        "giraffe.jpg", "leopard.jpg", "lion_01.jpg"
        "lion_02.jpg", "lion_03.jpg", "lion_04.jpg"
        "lizard.jpg", "pelican.jpg", "sheeps.jpg"
        "wild_boar.jpg", "yak.jpg", "zebra.jpg"
      ]
      art: [
        "blur.jpg", "circle.jpg", "colors.jpg"
        "rain.jpg", "wall.jpg"
      ]
      lifestyle: [
        'boat.jpg'
        'bus.jpg'
        'camera.jpg'
        'car.jpg'
        'city.jpg'
        'coffee.jpg'
        'desk.jpg'
        'dream_decor.jpg'
        'factory.jpg'
        'gipsy.jpg'
        'new_york.jpg'
        'photo_3.jpg'
        'photography.jpg'
        'restaurant.jpg'
        'trails.jpg'
        'village.jpg'
        'winter_city.jpg'
      ]
      music: [
        'concert.jpg'
        'earphones.jpg'
        'earphones_2.jpg'
        'guitar.jpg'
        'piano.jpg'
        'turn_table.jpg'
        'violin.jpg'
      ]
      nature: [
        'beach.jpg'
        'blossom.jpg'
        'clouds.jpg'
        'dry_fields.jpg'
        'dune.jpg'
        'flower.jpg'
        'grass.jpg'
        'lake.jpg'
        'leafs.jpg'
        'macro_field.jpg'
        'mountain.jpg'
        'sunset.jpg'
        'tailand.jpg'
        'tree.jpg'
        'waves.jpg'
      ]

    categoryKey = getRandomKey(getArrKey(imagePaths))
    imageKey = getRandomKey(imagePaths[categoryKey])

    path = "#{categoryKey}/#{imageKey}"
    $(".js-container").css
      backgroundImage: "url(public/image/content/#{path})"

