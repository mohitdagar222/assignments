import React from 'react'

function Test(props) {
    const style = {
        'backgroundColor': 'white',
        'marginTop': '2px',
        'borderRadius': '5px',
        'boxShadow': '0 2px 4px rgba(0, 0, 0, 0.1)',
        'padding': '10px',
        'textAlign': 'center'
    }
  return (
    <div style={style}>Welcome {props.user}!</div>
    
  )
}

export default Test