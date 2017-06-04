import React from 'react';

const About = (props) => {
  return(
    <div>
      <div className="card-section about text-left">
        <p>{props.about}</p>
      </div>
    </div>
  )
}

export default About;
