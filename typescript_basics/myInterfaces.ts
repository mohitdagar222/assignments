interface Iuser {
  email: string,
  userId: number
  // startTrail: () => string
  startTrail(): string
}

interface Iuser {
  age: number
}

interface Iadmin extends Iuser {
  role: "admin" | "candidate"
}

let memohit: Iuser = {email: "a.com", userId: 23, startTrail: () => {return ''}, age: 77}
let anotherUser: Iadmin = {email: "a.com", userId: 23, startTrail: () => {return ''}, age: 77, role: "candidate"}
