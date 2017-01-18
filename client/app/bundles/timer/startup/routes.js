import React from 'react';
import { Route, IndexRoute } from 'react-router';

import Timer from '../Timer';


export default (
  <Route path="/" component={Timer}>
    <IndexRoute component={Timer} />
   </Route>
);
