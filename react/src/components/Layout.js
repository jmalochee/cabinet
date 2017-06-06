import React from 'react';

const Layout = (props) => {
  return(
    <div>
      <a href="/"><h2 id="title">Meet the Cabinet</h2></a>
      { props.children }
    </div>
  )
}

export default Layout;
