const {app, BrowserWindow} = require('electron');

require('electron-reload')(__dirname);

let win;

function createWindow () {
    
    win = new BrowserWindow({width: 800, height: 600});
    win.loadURL(`file://${__dirname}/index.html`);
    win.on('closed', () => {
        win = null;
    });
}

app.on('ready', createWindow);

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