import React from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { incNumber, decNumber } from './actions/index'

function ReducerEx() {
  const dispatch = useDispatch();
  const myState = useSelector((state) => state.changeTheNumber)
  return (
    <div style={{textAlign: "center", margin:"50px", fontSize: "30px"}}>
        <a onClick = {() => dispatch(decNumber())}><span> - </span></a>
        <input style={{width: "30px", marginBottom: "15px"}} type="text" value={myState} disabled="disabled" />
        <a onClick = {() => dispatch(incNumber())}><span> + </span></a>
    </div>
  )
}

export default ReducerEx