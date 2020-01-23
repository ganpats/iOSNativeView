import { requireNativeComponent } from 'react-native';

// requireNativeComponent automatically resolves 'RNTMap' to 'RNTMapManager'
var MyView = requireNativeComponent('RNTView');
module.exports = MyView;
