// Objects
const pikachu = { name: 'Pikachu 🐹'  };
const stats = { hp: 40, attack: 60, defense: 45 }

'Bad Object Code 💩'
/*
pikachu['hp'] = stats.hp
pikachu['attack'] = stats.attack
pikachu['defense'] = stats.defense

// OR

const lvl0 = Object.assign(pikachu, stats)
const lvl1 = Object.assign(pikachu, { hp: 45 })
*/
'Good Object Code ✅'

const lvl0 = { ...pikachu, ...stats }
console.log(lvl0);
const lvl1 = { ...lvl0, ...pikachu, hp: 45 }
console.log(lvl1);

// Arrays
let pokemon = ['Arbok', 'Raichu', 'Sandshrew'];
/*
'Bad Array Code 💩'

pokemon.push('Bulbasaur')
pokemon.push('Metapod')
pokemon.push('Weedle')
*/
'Good Array Code ✅'

// Push
pokemon = [...pokemon, 'Bulbasaur', 'Metapod', 'Weedle']
console.log(pokemon);

// Shift
pokemon = ['Bulbasaur', ...pokemon, 'Metapod', 'Weedle', ]
console.log(pokemon);
