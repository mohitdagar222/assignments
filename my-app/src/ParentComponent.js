import React, { Component } from 'react'
import ChildComponent from './ChildComponent'

class ParentComponent extends Component {

    constructor(props){
        super(props)
        
        this.state = {
            message: "parent"
        }
        this.greetHandler = this.greetHandler.bind(this)
    }

    greetHandler(childName){
        alert(`hello ${this.state.message} from ${childName}`)
    }

  render() {

    return (
      <ChildComponent greetHandler = {this.greetHandler}/>
    )
  }
}

export default ParentComponent