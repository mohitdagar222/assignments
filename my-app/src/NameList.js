import React from 'react'
import Person from './Person'
import styles from './Person.module.css'

function NameList() {
   const persons = [
        {
            id: 1,
            name: "Mohit",
            age: 23,
            work: "Software Engineer"
        },
        {
            id: 2,
            name: "Ajay",
            age: 21,
            work: "ISI Most Wanted"
        },
        {
            id: 3,
            name: "Mohini",
            age: 22,
            work: "Charted Acountant"
        }
    ]
    const personList = persons.map((person) => <Person key={person.id} person={person} />)
    console.log(personList)
  return (
    <div>
        <p className={styles.success}>This styling is from module</p>
        {personList}
    </div>
  )
}

export default NameList