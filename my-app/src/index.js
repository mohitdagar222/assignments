import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import Demo from './Demo';
import Avatar from './Avatar';
import Functionclick from './Functionclick'
import ParentComponent from './ParentComponent'
import UserGreeting from './UserGreeting'
import NameList from './NameList'
import FragmentDemo from './FragmentDemo'
import PortalsDemo from './PortalsDemo'
import Hero from './Hero'
import ErrorBoundary from './ErrorBoundary'
import reportWebVitals from './reportWebVitals';
import ClickCounter from './ClickCounter';
import HoverCounter from './HoverCounter';
import { UserProvider } from './UserContext';
import ComponentC from './ComponentC'
import HookCounter from './HookCounter'
import HookCounterTwo from './HookCounterTwo'
import HookCounterThree from './HookCounterThree'
import UseContext from './UseContext'
import ReducerEx from './ReducerEx'
import store from './store'
import {Provider} from 'react-redux'


store.subscribe(() => console.log(store.getState()))

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
      {/* <Avatar content="plz subscribe to my channel" />     */}
      {/* <UserGreeting /> */}
      {/* <NameList /> */}
      {/* <PortalsDemo /> */}
      {/* <ErrorBoundary>
        <Hero heroName="Super Man"/>
      </ErrorBoundary>
      <ErrorBoundary>
        <Hero heroName="joker"/>
      </ErrorBoundary> */}
      <ClickCounter name="Mohit" />
      <HoverCounter />
      {/* <UserProvider value="Mohit">
          <ComponentC />
      </UserProvider> */}
      {/* <UseContext/> */}
      {/* <Provider store={store}>
       <ReducerEx />
       </Provider> */}
       {/* <App/> */}
      
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
