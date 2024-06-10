const menus = [
  {
    id: '1',
    menu_name: 'Menu principal',
    menu_description: 'que des bonnes choses',
    img_url: '/src/assets/icons/no-picture.png',
    meals: [
      {
        id: '1',
        meal_name: 'Tomato Soup',
        meal_description: 'slurp slurp',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: [
          { id: 61, numname: 1, quantity: 1, needDrop: 'false' },
          { id: 62, numname: 2, quantity: 0, needDrop: 'false' },
          { id: 63, numname: 3, quantity: 2, needDrop: 'true' },
          { id: 64, numname: 4, quantity: 0, needDrop: 'true' },
          { id: 65, numname: 5, quantity: 1, needDrop: 'false' },
          { id: 66, numname: 6, quantity: 2, needDrop: 'false' }
        ]
      },
      {
        id: '2',
        meal_name: 'Pizza',
        meal_description: 'yum yum',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: [
          { id: 436, numname: 1, quantity: 1, needDrop: 'false' },
          { id: 96, numname: 2, quantity: 0, needDrop: 'false' },
          { id: 572, numname: 5, quantity: 1, needDrop: 'false' }
        ]
      },
      {
        id: '3',
        meal_name: 'Spageth',
        meal_description: 'yum yum also',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: [
          { id: 824, numname: 4, quantity: 0, needDrop: 'true' },
          { id: 19, numname: 5, quantity: 1, needDrop: 'false' }
        ]
      }
    ]
  },
  {
    id: '2',
    menu_name: 'Menu desserts',
    menu_description: 'desserts et tout',
    img_url: '/src/assets/icons/no-picture.png',
    meals: [
      {
        id: '1',
        meal_name: 'glace framboise',
        meal_description: 'slurp slurp',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: [
          { id: 61, numname: 1, quantity: 1, needDrop: 'false' },
          { id: 62, numname: 2, quantity: 0, needDrop: 'false' },
          { id: 63, numname: 3, quantity: 2, needDrop: 'true' },
          { id: 64, numname: 4, quantity: 0, needDrop: 'true' },
          { id: 65, numname: 5, quantity: 1, needDrop: 'false' },
          { id: 66, numname: 6, quantity: 2, needDrop: 'false' }
        ]
      },
      {
        id: '2',
        meal_name: 'glace citron',
        meal_description: 'slurp slurp also',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: [
          { id: 436, numname: 4, quantity: 1, needDrop: 'false' },
          { id: 96, numname: 13, quantity: 0, needDrop: 'false' },
          { id: 572, numname: 14, quantity: 1, needDrop: 'false' }
        ]
      },
      {
        id: '3',
        meal_name: 'banane',
        meal_description: 'yum yum',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: [
          { id: 824, numname: 4, quantity: 0, needDrop: 'true' },
          { id: 19, numname: 5, quantity: 1, needDrop: 'false' }
        ]
      },
      {
        id: '4',
        meal_name: 'panna cotta',
        meal_description: 'yum yum',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: [
          { id: 623, numname: 4, quantity: 0, needDrop: 'false' },
          { id: 4241, numname: 3, quantity: 1, needDrop: 'true' },
          { id: 734, numname: 8, quantity: 1, needDrop: 'true' }
        ]
      }
    ]
  },
  {
    id: '3',
    menu_name: 'Menu boissons',
    menu_description: 'boissons et tout',
    img_url: '/src/assets/icons/no-picture.png',
    meals: [
      {
        id: '1',
        meal_name: 'eau plate',
        meal_description: 'a boire',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: []
      },
      {
        id: '2',
        meal_name: 'limonade',
        meal_description: 'aussi a boire',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: []
      },
      {
        id: '3',
        meal_name: 'milk-shake banane',
        meal_description: 'shake shake',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: [
          { id: 122, numname: 12, quantity: 1, needDrop: 'false' },
          { id: 25, numname: 14, quantity: 1, needDrop: 'false' }
        ]
      },
      {
        id: '4',
        meal_name: 'milk-shake mangue',
        meal_description: 'shake shake also',
        img_url: '/src/assets/icons/no-picture.png',
        allergicIngredients: [
          { id: 262, numname: 12, quantity: 1, needDrop: 'false' },
          { id: 428, numname: 14, quantity: 1, needDrop: 'false' }
        ]
      }
    ]
  }
]

export { menus }
