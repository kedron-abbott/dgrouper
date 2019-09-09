import React from 'react';
import {render} from 'react-dom'
import { Typography, Container } from '@material-ui/core';

export default function WelcomePage (){
  return(
    <Container fixed>
      <Typography variant="h2">
        Welcome to DGrouper
      </Typography>
      <Typography>
        This site is still under construction. Thank you for your patience :)
      </Typography>
    </Container>

  );
}

document.addEventListener('DOMContentLoaded', () => {
  render(
    <WelcomePage/>,
    document.body.appendChild(document.createElement('div')),
  )
})