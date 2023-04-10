let greetings: string = "Hello Mohit";
greetings.toLocaleLowerCase

let id: number = 3453

let isLogged: boolean = true
// we should use basic like below it will automatically detects

let userId = 46546

// any, we should use let hero: string;

let hero;
const getHero = () => {
  return true
}

function addTwo(num: number): number{
  return num += 1
}

// for arrow function

const getHello = (s: string): string => {
  return ""
}

function handleError(string: string): void {
  console.log(string)
}

function handleErrors(error: string): never {
  throw new Error(error)
}

function createUser({name, age}: {name: string, age: number}): {name: string, age: number}{
  console.log(age)
  return {name: "name", age: 2}
}

let result = addTwo(56)

// type alias

type User = {
  readonly _id: string; // we cant modify this
  name: string;
  email: string;
  isActive: boolean
  cardDetails?: number // ?makes this optional
}

function newUser(user: User): User{
  console.log(user.name)
  return {_id: user._id, name: '', email: '', isActive: false}
}



type cardNumber = {
  cardnumber: string
}

type cardDate = {
  carddate: string
}

type cardAllDetails = cardDate & cardNumber & {
  cvv: number
}




hero = getHero()
console.log(hero)
console.log(greetings)

export{}