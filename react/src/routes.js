import React from 'react';
import { Route, IndexRoute } from 'react-router';
import Layout from './components/Layout';
import CabinetIndex from './components/CabinetIndex';
import MemberShow from './components/MemberShow';

let routes = (
  <Route path="/" component={Layout}>
    <IndexRoute component={CabinetIndex}/>
    <Route path="/members/:id" component={MemberShow}/>
  </Route>
);

export default routes;
