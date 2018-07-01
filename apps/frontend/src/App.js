import React, { Component } from 'react';
import axios from 'axios';
import logo from './logo.svg';
import './App.css';

class App extends Component {

  componentDidMount() {
    axios.defaults.baseURL = (
      process.env.NODE_ENV !== 'production')
        ? 'http://localhost:3001/api/'
        : ''

    console.log("mounted")
    axios.get("/ping").then(
      payload => {
        console.log(payload)
      }
    )
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to React</h1>
        </header>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
      </div>
    );
  }
}

export default App;
