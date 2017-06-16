// Ensure files gets copied to dist
import Home from '../index.html';
import Css from '../css/screen.scss';
import Image from '../signing-180x180.png';

import Elm from './Main.elm';

// Append apple-touch-icon to head
let head = document.getElementsByTagName('head')[0];
let icon = document.createElement('link');

[
  ['rel', 'apple-touch-icon'],
  ['sizes', '180x180'],
  ['href', Image]
].forEach(attrVal => icon[attrVal[0]] = attrVal[1]);

head.appendChild(icon);

// Mount Elm
let mountNode = document.getElementById('main');
let app = Elm.Main.embed(mountNode);
