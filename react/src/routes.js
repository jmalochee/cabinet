import React from 'react';
import { Route, IndexRoute } from 'react-router';
import Layout from './components/Layout';
import CabinetIndex from './components/CabinetIndex';
import MemberShow from './components/MemberShow';
import About from './components/About';

let routes = (
  <Route path="/" component={Layout}>
    <IndexRoute component={CabinetIndex}/>
    <Route path="/members/:id" component={MemberShow}>
      <IndexRoute component={About}/>
      <Route path="/members/:id/:card" />
    </Route>
  </Route>
);

export default routes;
