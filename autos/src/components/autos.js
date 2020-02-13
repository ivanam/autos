import React from 'react'

const Autos = ({autos}) => {

    let autos2 = autos.filter( function (auto) {
      return auto.brandDescription === "FORD"
    });
    return (
        <div>
            <center><h1>Lista de autos marca FORD</h1></center>
            {autos2.map((auto) => (
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">{auto.title}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">{auto.modelDescription}</h6>
                        <h7 class="card-subtitle mb-2 text-muted">{auto.description}</h7>
                        <p class="card-text">tipo de combustible: {auto.fuelType}</p>
                    </div>
                </div>
            ))}
        </div>
        )    
};

export default Autos
