###jslint node: true###

module.exports = (grunt) ->

  #setup config
  grunt.initConfig
    pkg: "<json:package.json>"
    
    dirs:
      cssSrc: './www/css'
      jsSrc: './www/js'
      # dest: '../dist/<%= pkg.name %>-<%= pkg.version %>'
      dest: '../dist'

    meta:
      name: "<%= pkg.name %>"
      banner: "/*! <%= meta.name %> - v<%= pkg.version %> - <%= grunt.template.today(\"m/d/yyyy\") %>\n" + "* <%= pkg.homepage %>\n" + "* Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author.name %>;*/"

    watch:
      scripts:
        files: "<config:lint.file>"
        tasks: "lint:files"
    
    lint:
      files: [
        "./*.js"
        "config/*.js"
        "routes/*.js"
        "mocha/test/**/*.js"
        "www/js/*.js"
        "www/js/views/*.js"
        "www/js/models/*.js"
      ]

    requirejs:
      compile:
        options:
          name: "main"
          dir: 'build'
          baseUrl: "<%= dirs.jsSrc %>"
          mainConfigFile: '<%= dirs.jsSrc %>/main.js'
          logLevel: 2

    concat:
      dist:
        src: [ "<banner>", "<%= requirejs.compile.options.dir %>/main.js" ]
        dest: '<%= dirs.dest %>/www/js/main.js'

    copy:
      dist:
        files:
          "<%= dirs.dest %>/"                     : "./*"
          "<%= dirs.dest %>/config/"              : "./config/**"
          "<%= dirs.dest %>/routes/"              : "./routes/**"
          "<%= dirs.dest %>/views/"               : "./views/**"
          "<%= dirs.dest %>/www/"                 : "./www/**"
    
    # mincss:
    #   compress:
    #     files:
    #       "<%= dirs.dest %>/www/css/main.css": ["<%= dirs.dest %>/www/css/*.*"]

  # load thirdparty grunt task
  grunt.loadNpmTasks 'grunt-contrib'
  
  # Default task.
  # grunt.registerTask "default", "lint test concat min"
  grunt.registerTask "default", "lint"
  grunt.registerTask "build", "copy"

