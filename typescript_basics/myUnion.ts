let score: string | number = 40

type myUser = {
  name: string;
  id: number;
}

type Admin = {
  userName: string;
  id: number;
}

let mohit: myUser | Admin = {name: 'mohit', id: 123}

mohit = {userName: 'mohit', id: 345}

let a: (number | string)[] = ["test", 3]

