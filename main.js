const {app, BrowserWindow, ipcMain} = require('electron');

require('electron-reload')(__dirname);

let win

function createWindow () {
    
    win = new BrowserWindow({width: 1366, height: 768, show: false, frame: false, titleBarStyle: 'hidden'});
    win.loadURL(`file://${__dirname}/index.html`);
    win.once('ready-to-show', () => {
        win.show();    
    });
    win.on('closed', () => {
        win = null;
    });
}

app.on('ready', () => {

    createWindow();
});

app.on('all-windows-closed', () => {
    
    if (process.platform !== 'darwin') {
        app.quit();
    }
});

app.on('activate', () => {
   if (win === null)  {
       createWindow();
   }
});