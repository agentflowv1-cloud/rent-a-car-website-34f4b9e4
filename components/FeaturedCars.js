import React from 'react';
import './FeaturedCars.css';

const FeaturedCars = () => {
  return (
    <div className='featured-cars-container'>
      <div className='card'>
        <img src='https://via.placeholder.com/300' alt='Car 1' />
        <h2>Car 1</h2>
        <p>Details about Car 1</p>
      </div>
      <div className='card'>
        <img src='https://via.placeholder.com/300' alt='Car 2' />
        <h2>Car 2</h2>
        <p>Details about Car 2</p>
      </div>
      <div className='card'>
        <img src='https://via.placeholder.com/300' alt='Car 3' />
        <h2>Car 3</h2>
        <p>Details about Car 3</p>
      </div>
    </div>
  );
};

export default FeaturedCars;