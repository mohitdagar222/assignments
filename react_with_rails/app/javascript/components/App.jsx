import React from 'react'
import Test from './Test'
import Modal from './Modal'
import MyAutocomplete from './Autocomplete';
import MuiPagination from './Pagination'
import SearchAppBar from './Navbar'
import ExampleForm from './Formfields'
import { Routes, Route } from "react-router-dom";
import About from './About'
import Home from './Home'
import { BrowserRouter as Router } from "react-router-dom";




const App = (props) => {
  return (
    <div className="container">
      <Router>
        <Routes>
          <Route path="/" element={<Home user={props.user} />} />
          <Route path="/about" element={<About />} />
        </Routes>
      </Router>
    </div>
  )
}

export default App