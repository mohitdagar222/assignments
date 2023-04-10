import React from 'react';
import {useState} from 'react';
import Inputfield from './Inputfield'
import './App.css'

interface Todo {
  id: number;
  todo: string;
  isDone: boolean;
}

const App: React.FC = () => {
  const [todo, setTodo] = useState<string>("")
  const [todos, setTodos] = useState<Todo[]>([])

  const handleAdd = (e: React.FormEvent) => {
    e.preventDefault();

    if(todo){
    setTodos([...todos, {id: Date.now(), todo: todo, isDone: false}])
    setTodo("")
    }
  }
  console.log(todos)
  return (
    <div style={{marginLeft: "50px"}}>
      <h1 style={{ textAlign: 'center', fontSize: '2rem', color: '#4caf50', textTransform: 'uppercase' }} > TASKIFY </h1>
      {todos.map((todo) =>
        <li key={todo.id}>{todo.todo}</li>
      )}

      <Inputfield todo={todo} setTodo={setTodo} handleAdd={handleAdd} />
    </div>
  )
}

export default App