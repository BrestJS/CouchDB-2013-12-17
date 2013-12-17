module.exports = (grunt) ->

  pkg = grunt.file.readJSON 'package.json'

  grunt.initConfig
    pkg: pkg

    'file-creator':
      html:
        'index.html': (fs,fd,done) ->
          fs.writeSync fd, (require './index')()
          done()

    browserify:
      dist:
        options:
          transform: ['coffeeify','debowerify','decomponentify', 'deamdify', 'deglobalify','rfileify']
        files:
          'dist/<%= pkg.name %>.js': 'src/main.coffee'

    clean:
      dist: ['lib/', 'dist/']
      modules: ['node_modules/', 'bower_components/']

  grunt.loadNpmTasks 'grunt-file-creator'
  grunt.loadNpmTasks 'grunt-browserify'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.registerTask 'default', 'clean:dist file-creator:html browserify'.split ' '
