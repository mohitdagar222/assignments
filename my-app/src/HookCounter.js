import React, {useState, useEffect} from 'react'

function HookCounter(){

    const [count, setCount] = useState(0)

    useEffect(() => {
        document.title = `button clicked ${count} times`
    }, [count])
    return (
        <div>
            <button onClick={() => setCount(count + 1)}> button clicked {count} </button>
        </div>
    )
}

export default HookCounter