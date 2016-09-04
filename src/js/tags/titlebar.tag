<titlebar>
    <div class='window-buttons'>
        <ul>
            <li id='close-btn'><img src='src/img/close.svg' /></li>
            <li id='restore-btn'><img src='src/img/restore.svg' /></li>
            <li id='minimize-btn'><img src='src/img/minimize.svg' /></li>
        </ul>
    </div>
</titlebar>

<script>
    
    const {ipcRenderer} = require('electron')
    const {$} = require('jquery');
    
    $('#close-btn').on('click', function (e) {
        
        ipcRenderer.send('asynchronous-message', 'close');        
    });
</script>