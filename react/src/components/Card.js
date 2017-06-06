import React from 'react';

const Card = (props) => {
  return(
    <div>
      <div className={`card-section ${props.card_type} text-left`}>
        <h3>{props.card_name}</h3>
        <p>{props.content}</p>
        <p><a href={props.source}>see more</a></p>
      </div>
    </div>
  )
}

export default Card;
