import React from 'react';

const MemberItem = (props) => {
  return(
    <div className="column">
      <a href={props.link}>
        <div className="card cabinet-index-item">
          <img src={props.image}/>
          <div className="card-section text-center">
            <p>{props.name}</p>
          </div>
        </div>
      </a>
    </div>
  )
}

export default MemberItem;
