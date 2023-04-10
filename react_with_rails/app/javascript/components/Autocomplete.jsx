import React from 'react';
import Autocomplete from '@mui/material/Autocomplete';
import TextField from '@mui/material/TextField';
import { styled, alpha } from '@mui/material/styles';
import InputBase from '@mui/material/InputBase';
import SearchIcon from '@mui/icons-material/Search';

const StyledAutocomplete = styled(Autocomplete)(({ theme }) => ({
    '& .MuiAutocomplete-root': {
        backgroundColor: '#fff',
        borderRadius: 4,
        '& .MuiInputBase-root': {
          backgroundColor: 'transparent',
          '& input': {
            padding: `${theme.spacing(1)} 0 0 ${theme.spacing(2)}`,
            '&::placeholder': {
              opacity: 0.6,
              fontStyle: 'italic',
            },
          },
        },
        '& .MuiAutocomplete-endAdornment': {
          marginRight: theme.spacing(1),
        },
      },
    }));


  const options = ['The Godfather', 'The Dark Knight', 'Forrest Gump', 'Pulp Fiction', 'Fight Club', 'The Shawshank Redemption', 'The Silence of the Lambs', 'Goodfellas', 'Jaws', 'E.T. the Extra-Terrestrial', 'Jurassic Park', 'Indiana Jones and the Raiders of the Lost Ark', 'Star Wars: A New Hope', 'The Matrix', 'Terminator 2: Judgment Day', 'Alien', 'Back to the Future', 'The Breakfast Club', 'Dirty Dancing', 'Ghostbusters'];



function MyAutocomplete() {
  return (
    <div style={{position: "absolute", right: '0', top: '30', padding: '20px', marginRight: "200px"}}>
    <StyledAutocomplete
        disablePortal
        id="combo-box-demo"
        options={options}
        sx={{ width: 400 }}
        renderInput={(params) => (
        <TextField {...params} label="Movie" placeholder="Search"
            InputProps={{
            ...params.InputProps,
            startAdornment: <SearchIcon />,
            }}
        />
        )}
  />
  </div>
  );
}

export default MyAutocomplete
