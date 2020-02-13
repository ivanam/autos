import React, {Component} from 'react';
import Autos from './components/autos';

class App extends Component {
    render() {
        return (
            <Autos autos={this.state.autos} />
        )
    }

    state = {
        autos: []
    };

    componentDidMount() {
        fetch('http://server.cocoche.com.ar/car_listing_presentation?list_length=100')
            .then(res => res.json())
            .then((data) => {
                this.setState({ autos: data["carList"] })
            })
            .catch(console.log)
    }
}

export default App;