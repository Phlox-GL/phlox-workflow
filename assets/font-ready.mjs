import FontFaceObserver from 'fontfaceobserver-es';
export function onFontReady(name, ready) {
  new FontFaceObserver(name).load().then(ready);
}
