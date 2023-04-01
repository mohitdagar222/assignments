import React, { Component } from 'react'
import { UserConsumer } from './UserContext'

class ComponentD extends Component {
  render() {
    return (
      <UserConsumer>
        {
            userName => {
                return <div>Hello {userName}</div>
            }
        }
      </UserConsumer>
    )
  }
}

export default ComponentD