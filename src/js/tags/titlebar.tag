<titlebar>
    <div class='window-buttons'>
        <ul>
            <li id='close-btn' onclick='{close}'><img src='src/img/close.svg' /></li>
            <li id='max-btn' onclick='{max}'><img src='src/img/restore.svg' /></li>
            <li id='minimize-btn' onclick='{min}'><img src='src/img/minimize.svg' /></li>
        </ul>
    </div>
    <script>
        
        const {remote} = require('electron');
        
        close(e) {
            
            var window = remote.getCurrentWindow();
            window.close();
        }
        
        max(e) {
            
            var window = remote.getCurrentWindow();
            if (!window.isMaximized()) {
                
                window.maximize();
            } else {
                
                window.unmaximize();
            }
        }
        
        min(e) {
            
            var window = remote.getCurrentWindow();
            window.minimize();
        }
        
    </script>
</titlebar>
