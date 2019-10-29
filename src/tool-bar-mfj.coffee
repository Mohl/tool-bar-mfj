module.exports =
    deactivate: ->
        @toolBar?.removeItems()

    consumeToolBar: (toolBar) ->
        @toolBar = toolBar 'tool-bar-basic'

        @toolBar.addButton
            icon: 'document-text'
            callback: 'application:open-file'
            tooltip: 'Open File'
            iconset: 'ion'

        @toolBar.addButton
            'icon': 'folder'
            'callback': 'application:open-folder'
            'tooltip': 'Open Folder'
            'iconset': 'ion'

        @toolBar.addButton
            'icon': 'archive'
            'callback': 'core:save'
            'tooltip': 'Save File'
            'iconset': 'ion'

        @toolBar.addSpacer()

        @toolBar.addButton
            'icon': 'search'
            'iconset': 'fa'
            'tooltip': 'Find in Buffer'
            'callback': 'find-and-replace:toggle'

        @toolBar.addSpacer()

        @toolBar.addButton
            'icon': 'chevron-right'
            'callback': 'pane:split-right'
            'tooltip': 'Split Right'

        @toolBar.addButton
            'icon': 'chevron-down'
            'callback': 'pane:split-down'
            'tooltip': 'Split Down'

        @toolBar.addSpacer()

        @toolBar.addButton
            'iconset': 'fa'
            'icon': 'arrows-alt'
            'tooltip': 'Toggle Fullscreen'
            'callback': 'window:toggle-full-screen'

        @toolBar.addButton
            'icon': 'list'
            'callback': 'tree-view:toggle'
            'tooltip': 'Toggle Sidebar'
            'iconset': 'fa'

        @toolBar.addSpacer()
        if atom.packages.loadedPackages['atom-beautify']
          @toolBar.addButton
              'iconset': 'fa'
              'icon': 'play'
              'tooltip': 'Start Hugo Server'
              'callback': 'hugofy:startServer'

          @toolBar.addButton
              'iconset': 'fa'
              'icon': 'stop'
              'tooltip': 'Stop Hugo Server'
              'callback': 'hugofy:stopServer'

        @toolBar.addSpacer()

        @toolBar.addButton
          'icon': 'markdown'
          'callback': 'markdown-preview:toggle'
          'tooltip': 'Markdown Preview'
          
        @toolBar.addButton
            'icon': 'gear'
            'callback': 'settings-view:open'
            'tooltip': 'Open Settings View'
