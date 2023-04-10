import React from 'react'
import Test from './Test'
import Modal from './Modal'
import MyAutocomplete from './Autocomplete';
import MuiPagination from './Pagination'
import SearchAppBar from './Navbar'
import ExampleForm from './Formfields'

const Home = (props) => {
  return (
    <>
    <SearchAppBar />
    <Test user={props.user}/>
    <Modal/>
    <MyAutocomplete/>
    <MuiPagination />
    <ExampleForm /></>
  )
}

export default Home