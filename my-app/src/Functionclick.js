import React from 'react'

function Functionclick() {
    function eventHandler(){
        console.log("button clicked")
    }
  return (
    <button onClick={eventHandler}>Click</button>
    // this.eventHandler in case of class
    // in case of in class setState we neeed this so calling this.eventHandler.bind(this)
    // one approach is to simply use this.eventHandler and in constructor this.eventHandler = this.eventHandler.bind(this)
  )
}

export default Functionclick