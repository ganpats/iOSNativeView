/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react';
import { StyleSheet } from 'react-native';
import MyView from './src/components/myView';

class App extends React.Component {
  render() {
    return <MyView style={styles.myView} />;
  }
}

const styles = StyleSheet.create({
  myView: {
    flex: 1,
    backgroundColor: 'orange',
  },
});

export default App;
