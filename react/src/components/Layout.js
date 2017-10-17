import React from 'react';

const Layout = (props) => {
  return(
    <div className="column text-center">
      <a href="/"><h2 id="title">Meet the Cabinet</h2></a>
        <div className="row">
          { props.children }
        </div>
    </div>
  )
}

export default Layout;
