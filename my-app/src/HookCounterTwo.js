import React, {useState} from 'react'

function HookCounterTwo() {

    const initialState = 0
    const [count, setCount] = useState(initialState)
  return (
    <div>
        count: {count}
        <button onClick={() => setCount(initialState)}>Reset</button>
        <button onClick={() => setCount(prevCount => prevCount + 1)}>Increment</button>
        <button onClick={() => setCount(prevCount => prevCount - 1)}>Decrement</button>
    </div>
  )
}

export default HookCounterTwo