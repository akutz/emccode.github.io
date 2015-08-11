exports.config =

    paths:
        public:     'public'
        watched:    ['app']

    conventions:
        assets:     [
            /assets\//
        ]

    modules:
        definition: false
        wrapper:    false

    files:
        javascripts:
            joinTo:
                'scripts/ext.js': /bower_components\//
                'scripts/app.js': /app\/scripts\//
        stylesheets:
            joinTo:
                'styles/ext.css': /bower_components\//
                'styles/app.css': /app\/styles\//

    plugins:
        sass:
            options:
                mode:           'native'
                includePaths:   ['bower_components']
        gzip:
            paths:
                javascript: 'scripts'
                stylesheet: 'styles'
                removeOriginalFiles: false
                renameGzipFilesToOriginalFiles: false