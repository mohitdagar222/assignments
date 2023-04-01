import React from 'react'

function ChildComponent(props) {
  return (
    <button onClick={() => {props.greetHandler("child")}}>Greet</button>
  )
}

export default ChildComponent