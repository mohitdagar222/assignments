import React, {useState} from 'react'

function HookCounterThree() {
    const [name, setname] = useState({firstName: '', lastName: ''})
  return (
    <div>
        <input type="text" value={name.firstName} onChange={e => setname({ ... name, firstName: e.target.value})}></input>
        <input type="text" value={name.lastName} onChange={e => setname({ ... name, lastName: e.target.value })}></input>
        <h2>Your first name is: {name.firstName}</h2>
        <h2>Your last name is: {name.lastName}</h2>
    </div>
  )
}

export default HookCounterThree