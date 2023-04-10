import React, { useState } from 'react';
import { styled, alpha } from '@mui/material/styles';
import Pagination from '@mui/material/Pagination';
import './App.css'
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';

const useStyles = styled((theme) => ({
  root: {
    '& > *': {
      marginTop: theme.spacing(2),
    },
  },
}));

const MuiPagination = () => {
  const classes = useStyles();
  const [currentPage, setCurrentPage] = useState(1);
  const itemsPerPage = 10;
  const totalPages = Math.ceil(80 / itemsPerPage);

  const items = [];

for (let i = 0; i < 80; i++) {
    const item = {
        id: i + 1,
        name: `Item ${i + 1}`,
        price: Math.floor(Math.random() * 1000) + 1, // generates a random price between 1 and 1000
        description: `This is the description for Item ${i + 1}.`,
    };
    items.push(item);
}


  const handlePageChange = (event, pageNumber) => {
    setCurrentPage(pageNumber);
    console.log(currentPage)
  };

  const renderItems = () => {
    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
     
    return (<TableContainer sx={{ width: 400, marginLeft: "40%", marginTop: 0, top: '20%', position: 'absolute' }} component={Paper}>
      <Table sx={{ width: 400 }} aria-label="simple table">
        <TableHead>
          <TableRow>
            <TableCell>Name</TableCell>
            <TableCell align="right">Description</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
        {items.slice(startIndex, endIndex).map((item) => (
            <TableRow
              key={item.id}
              sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
            >
              <TableCell component="th" scope="row">
                {item.name}
              </TableCell>
              <TableCell>{item.description}</TableCell>
            </TableRow>
          ))}

        </TableBody>
      </Table>
    </TableContainer>);
  };

  return (
    <div className={classes.root}>
      {renderItems()}
      <Pagination
        count={totalPages}
        page={currentPage}
        variant="outlined" color="secondary"
        onChange={handlePageChange}
      />
    </div>
  );
};

export default MuiPagination;
