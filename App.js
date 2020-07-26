/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  StatusBar,
  NativeModules,
  TouchableOpacity,
  Platform,
} from 'react-native';

const HelloWorld = NativeModules.HelloWorldModule;

class App extends React.Component {
  render() {
    return (
      <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
        <TouchableOpacity
          onPress={() => {
            if (Platform.OS === 'android') {
              HelloWorld.ShowMessage(
                'This is first time we are creating bridge modules',
                500,
              );
            } else if (Platform.OS === 'ios') {
              NativeModules.HelloWorld.ShowMessage(
                'Awesome its working mahadeva!!',
                0.5,
              );
            }
          }}>
          <Text>Click Me!</Text>
        </TouchableOpacity>
      </View>
    );
  }
};

const styles = StyleSheet.create({});

export default App;
