// src/App.js

import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import LoginPage from './LoginPage';
// Import other components and pages as needed


const App = () => {
  return (
    <Router>
      <Switch>
        <Route exact path="/login" component={LoginPage} />
        {/* Add other routes here */}
      </Switch>
    </Router>
  );
};

export default App;
