import React, { Component } from 'react'



class UserGreeting extends Component {

    constructor(props){
        super(props)
        this.state = {
            isLoggedin: false
        }
    }
  render() {
    if (this.state.isLoggedin){
        return (
        <div>Welcome Mohit</div>
        )
        }
    else{
        return (
        <div>Welcome Guest</div>
        )
    }


  }
}

export default UserGreeting