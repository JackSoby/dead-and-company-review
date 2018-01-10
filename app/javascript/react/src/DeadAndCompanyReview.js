import React from 'react';

import Home from './containers/Home'
import { Route, Switch, BrowserRouter as Router } from 'react-router-dom';

const DeadAndCompanyReview = props => {
  return(
  <div>
    <Router>
      <main>
        <Switch>
          <Route exact path='/' component={Home} />
        </Switch>
       </main>
      </Router>
  </div>
  )
}

export default DeadAndCompanyReview
