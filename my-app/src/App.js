import logo from './logo.svg';
import './App.css';
import axios from 'axios';
import {useEffect, useState} from 'react';

function App() {
  const [users, setUsers] = useState([]);
  useEffect(() => {
    axios
    .get("https://reqres.in/api/users?page=2")
    .then((resp) => {
      console.log(resp.data.data)
      setUsers(resp.data.data);
    });
  }, []);
  return (
    <div className="App">
      <h1>List of Users</h1>
      <ul>
        {users.map((user) => (
          <li key={user.id}>{user.first_name} {user.last_name}</li>
        ))}
      </ul>
    </div>
  );
}

export default App;
