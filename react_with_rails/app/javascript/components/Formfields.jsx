import React, { useState } from 'react';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import InputLabel from '@mui/material/InputLabel';
import Select from '@mui/material/Select';
import Radio from '@mui/material/Radio';
import RadioGroup from '@mui/material/RadioGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import { Dayjs } from 'dayjs';
import { DemoContainer } from '@mui/x-date-pickers/internals/demo';
import { AdapterDayjs } from '@mui/x-date-pickers/AdapterDayjs';
import { LocalizationProvider } from '@mui/x-date-pickers/LocalizationProvider';
import { DatePicker } from '@mui/x-date-pickers/DatePicker';
import TextField from '@mui/material/TextField';


function ExampleForm() {
  const [selectedOption, setSelectedOption] = useState('');
  const [value, setValue] = useState(null);
  const [phvalue, setPhValue] = useState('');
  const [error, setError] = useState(false);


  const handleOptionChange = (event) => {
    setSelectedOption(event.target.value);
  };

  const handlePhChange = (event) => {
    const newValue = event.target.value;
    console.log(newValue)
    
    if (/^\d*$/.test(newValue)) {
      setPhValue(newValue);
      setError(false);
    } else {
      setError(true);
    }
  };


  return (
    <div style={{marginLeft: "150px", top: "250px", position: "absolute"}}>
      <FormControl variant="outlined" fullWidth>
        <InputLabel id="select-label">Select an option</InputLabel>
        <Select
          labelId="select-label"
          id="select"
          value={selectedOption}
          onChange={handleOptionChange}
          label="Select an option"
          style={{width: '70%'}}
        >
          <MenuItem value="option1">Option 1</MenuItem>
          <MenuItem value="option2">Option 2</MenuItem>
          <MenuItem value="option3">Option 3</MenuItem>
        </Select>
      </FormControl>

      <FormControl component="fieldset">
        <RadioGroup
          aria-label="radio-group"
          name="radio-group"
          value={selectedOption}
          onChange={handleOptionChange}
          style={{marginTop: "15px"}}
        >
          <FormControlLabel value="option1" control={<Radio />} label="Option 1" />
          <FormControlLabel value="option2" control={<Radio />} label="Option 2" />
          <FormControlLabel value="option3" control={<Radio />} label="Option 3" />
        </RadioGroup>
      </FormControl>

      <LocalizationProvider dateAdapter={AdapterDayjs}>
        <DemoContainer components={['DatePicker']}>
            <DatePicker value={value} onChange={(newValue) => setValue(newValue)} style={{marginTop: "15px"}} />
        </DemoContainer>
      </LocalizationProvider>
      <TextField
        label="Enter a number"
        value={phvalue}
        onChange={handlePhChange}
        error={error}
        helperText={error ? "Please enter only numbers" : ""}
        style={{marginTop: "15px"}}
      />
    </div>
  );
}

export default ExampleForm;