import React from 'react'
import ComponentM from './ComponentM'

export const userContext = React.createContext()
function UseContext() {
    
  return (
    <div>
        <userContext.Provider value="mohit">
            <ComponentM />
        </userContext.Provider>
    </div>
  )
}

export default UseContext