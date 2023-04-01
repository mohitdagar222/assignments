import React,{Component} from "react";
import Avatarlist from './Avatarlist';


class Avatar extends Component{

    constructor(props){
        super(props);
        this.state = {
            name: this.props.content
						// name: "hello plz subscribe"
        }
    }

    namechange(){
        this.setState({
            name: "Subscribe to my avatar world"
        }, () => {
					console.log("callback", this.state.name)
				})
				console.log(this.state.name)
    }
    render(){
        return <div className="avatar"> 
                <h1>{this.state.name}</h1>
                <Avatarlist name="mohit"> <p>this is mohit children</p> </Avatarlist>
                <Avatarlist name="ajay" />
                <Avatarlist name="Lamar" />
                <Avatarlist name="vinay" />
                <button onClick={ () => { this.namechange()}}>Subscribe</button>
            </div>
    }
}


export default Avatar;