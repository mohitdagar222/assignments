import React, {useContext} from 'react'
import { userContext } from './UseContext'

function ComponentN() {
    const user = useContext(userContext)
  return (
    <div>{user}</div>
  )
}

export default ComponentN