import React,{Component} from 'react';
import ReactDom from 'react-dom';
import './Demo.css';


// class Demo extends Component{
//     render(){
            // const {name} = this.props
//         return <div className="main-div">
//                 <h1> Hello World My name is {name} </h1> // or we can use {this.props.name}
//                 <p> This is react basic tutorial </p>
//             </div>

//     }
// }

// const Demo = ({name}) => { and then we can use simple name
const Demo = (props) => {
	return <div className="main-div">
                <h1> Hello World My name is {props.name} </h1>
                <p> This is react basic tutorial </p>
            </div>

}
export default Demo;

// also instead of props we can write ({name}) and just use {name}
// for functional components, no need to write export default, just add export in front of function export cons Demo = and import with same name in other file - import {Demo} from './Demo'