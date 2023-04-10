import React from 'react'

interface Props {
  todo: string;
  setTodo: React.Dispatch<React.SetStateAction<string>>
  handleAdd(e: React.FormEvent): void;
}

const Inputfield = (props: Props) => {
  const {todo, setTodo} = props
  return (
    <form onSubmit={props.handleAdd}>
      <input style={{ padding: '10px', borderRadius: '5px', border: 'none', backgroundColor: '#f5f5f5', marginRight: '10px', fontSize: '16px', outline: 'none', width: '70%' }}
 type="input" value={todo} onChange={(e) => setTodo(e.target.value)} placeholder="Enter a task"></input>
      <button style={{ padding: '10px', borderRadius: '5px', border: 'none', backgroundColor: '#4caf50', color: 'white', fontSize: '16px', cursor: 'pointer', outline: 'none' }}
 type="submit">Go</button>
    </form>
  )
}

export default Inputfield