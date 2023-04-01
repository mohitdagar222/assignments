import React from 'react'
import './Person.css'
import styles from './Person.module.css'

function Person({person}) {
    const heading = {
        fontSize: '20px'
    }
  return (
    <div>
    <h2 className="primary" style={heading}>my name is {person.name}. i am {person.age} years old. i am here as {person.work}</h2>
    
    </div>
  )
}

export default Person