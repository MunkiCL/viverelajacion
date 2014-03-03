'use strict';
// Generated on 2014-02-26 using generator-gulp-webapp 0.0.3

var gulp = require('gulp');

// Load plugins
var $ = require('gulp-load-plugins')();

// Styles
gulp.task('styles', function () {
    return gulp.src('app/styles/main.less')
        .pipe($.less())
        .pipe($.autoprefixer('last 1 version'))
        .pipe($.csso())
        .pipe(gulp.dest('app/styles/'))
        .pipe($.size());

});

gulp.task('stylesDist',function(){
    // var context = $.rev.Context();
    return gulp.src('app/styles/main.less')
        .pipe($.less())
        .pipe($.autoprefixer('last 1 version'))
        .pipe($.csso())
        // .pipe($.rev(context))
        .pipe(gulp.dest('dist/styles/'))
        .pipe($.size());
});

// Scripts
gulp.task('scripts', function () {
    return gulp.src('app/scripts/**/*.js')
        .pipe($.jshint('.jshintrc'))
        .pipe($.jshint.reporter('default'))
        .pipe($.size());
});

// HTML
gulp.task('html', function () {
    return gulp.src('app/*.html')
      .pipe($.useref())
      .pipe(gulp.dest('dist'))
      .pipe($.size());
});

// Images
gulp.task('images', function () {
    // var context = $.rev.Context();
    return gulp.src('app/images/**/*')
        .pipe($.cache($.imagemin({
            optimizationLevel: 4,
            progressive: true,
            interlaced: true
        })))
        // .pipe($.rev(context))
        // .pipe(context.replace)
        .pipe(gulp.dest('dist/images'))
        .pipe($.size());
});

// Clean
gulp.task('clean', function () {
    return gulp.src(['dist/styles', 'dist/scripts', 'dist/images'], {read: false}).pipe($.clean());
});

// Bundle
gulp.task('bundle', ['stylesDist', 'scripts'], $.bundle('./app/*.html',{
    minify:true
}));

// Build
gulp.task('build', ['html', 'bundle', 'images']);

// Default task
gulp.task('default', ['clean'], function () {
    gulp.start('build');
});

gulp.task('server',['connect','styles','scripts','watch']);

// Connect
gulp.task('connect', $.connect.server({
    root: ['app'],
    port: 3000,
    livereload: true
    // ,
    // open:{
    //     browser:'Google Chrome'
    // }
}));

// Watch
gulp.task('watch', ['connect'], function () {
    // Watch for changes in `app` folder
    gulp.watch([
        'app/*.html',
        'app/styles/**/*.css',
        'app/scripts/**/*.js',
        'app/images/**/*'
    ], $.connect.reload);

    // Watch .scss files
    gulp.watch('app/styles/**/*.less', ['styles']);


    // Watch .js files
    gulp.watch('app/scripts/**/*.js', ['scripts']);

    // Watch image files
    gulp.watch('app/images/**/*', ['images']);


});
