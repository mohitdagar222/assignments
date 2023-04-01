import React from 'react'
import ReactDOM  from 'react-dom'

function PortalsDemo() {
  return ReactDOM.createPortal(
    <h1>portal Demo</h1>,
    document.getElementById('portal-root')
  )  
}

export default PortalsDemo