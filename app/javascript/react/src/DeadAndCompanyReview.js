import React from 'react';
import Home from './containers/Home'
import ShowContainer from './containers/ShowContainer'
import { Route, Switch, BrowserRouter as Router } from 'react-router-dom';
import NavBar from './containers/NavBar'


const DeadAndCompanyReview = props => {
  return(
  <div>
    <Router>
      <main>
       <NavBar/>
        <Switch>
          <Route exact path='/' component={Home} />
          <Route path='/shows/:value' component={ShowContainer} />
        </Switch>
       </main>
      </Router>
  </div>
  )
}

export default DeadAndCompanyReview
