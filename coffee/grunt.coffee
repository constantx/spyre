###jslint node: true###

"use strict"

module.exports = (grunt) ->

  #setup config
  grunt.initConfig
    pkg: "<json:package.json>"
    
    dirs:
      jsSrc: './public/js'
      # dest: '../dist/<%= pkg.name %>-<%= pkg.version %>'
      dest: '../dist/'

    meta:
      name: "<%= pkg.name %>"
      banner: "/*! <%= meta.name %> - v<%= pkg.version %> - <%= grunt.template.today(\"m/d/yyyy\") %>\n" + "* <%= pkg.homepage %>\n" + "* Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author.name %>;*/"
    
    lint:
      files: [
        "./*.js"
        "config/*.js"
        "routes/*.js"
        "mocha/test/**/*.js"
        "public/js/*.js"
        "public/js/views/*.js"
        "public/js/models/*.js"
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
        dest: '<%= dirs.dest %>/public/js/main.js'

    copy:
      dist:
        files:
          "<%= dirs.dest %>/"                     : "./*"
          "<%= dirs.dest %>/config/"              : "./config/**"
          "<%= dirs.dest %>/routes/"              : "./routes/**"
          "<%= dirs.dest %>/views/"               : "./views/**"
          "<%= dirs.dest %>/public/js/"           : "./public/js/require.js"
          "<%= dirs.dest %>/public/css/"          : "./public/css/**"
          "<%= dirs.dest %>/public/images/"       : "./public/images/**"

    watch:
      scripts:
        files: "<config:lint.file>"
        tasks: "lint:files"

    jshint:
      options:
        curly: true
        eqeqeq: true
        immed: true
        latedef: true
        newcap: true
        noarg: true
        sub: true
        undef: true
        boss: true
        eqnull: true

      globals:
        module: false
        exports: true
        require: true
        define: true
        describe: true
        it: true

  # load thirdparty grunt task
  grunt.loadNpmTasks 'grunt-contrib'
  
  # Default task.
  # grunt.registerTask "default", "lint test concat min"
  grunt.registerTask "default", "lint"
  grunt.registerTask "build", "copy"

