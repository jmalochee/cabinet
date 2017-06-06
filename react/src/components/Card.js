import React from 'react';

const Card = (props) => {
  return(
    <div>
      <div className={`card-section ${props.type} text-left`}>
        <h3>{props.name}</h3>
        <p>{props.content}</p>
        <p><a href={props.source}>see more</a></p>
      </div>
    </div>
  )
}

export default Card;
