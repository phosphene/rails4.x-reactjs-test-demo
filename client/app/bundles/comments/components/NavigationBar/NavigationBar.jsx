// https://github.com/eslint/eslint/issues/6876
// eslint-disable new-cap

import classNames from 'classnames';
import _ from 'lodash';
import React, { PropTypes } from 'react';

import CommentsCount from './CommentsCount';
import * as paths from '../../constants/paths';
import { Nav, Navbar, NavItem } from 'react-bootstrap';

const NavigationBar = (props) => {
  const { commentsCount, pathname } = props;

  /* eslint-disable new-cap */
  return (
    <Navbar>
     <Nav>
      <NavItem href="/">Home</NavItem>
     
      <NavItem href={paths.ROUTER_PATH}>React Router Demo</NavItem>
     </Nav>   
    </Navbar>
  );
};

NavigationBar.propTypes = {
  commentsCount: PropTypes.number,
  pathname: PropTypes.string.isRequired,
};

export default NavigationBar;
