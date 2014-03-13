var gulp = require('gulp');

var coffee    = require('gulp-coffee');
var concat    = require('gulp-concat');
var uglify    = require('gulp-uglify');
var sass      = require('gulp-sass');
var plumber   = require('gulp-plumber');

var paths = {
  scripts: ['public/javascripts/*.coffee', '!client/external/**/*.coffee'],
  styles: 'public/stylesheets/*.scss'
};

gulp.task('scripts', function() {
  // Minify and copy all JavaScript (except vendor scripts)
  return gulp.src(paths.scripts)
    .pipe(coffee())
    .pipe(uglify())
    .pipe(concat('application.min.js'))
    .pipe(gulp.dest('build/js'));
});

gulp.task('sass', function() {
    gulp.src('public/stylesheets/*.scss')
        .pipe(plumber())
        .pipe(sass({
            includePaths: ['_scss/includes/']
        }))
        .pipe(gulp.dest('build/css'));
});

// Rerun the task when a file changes
gulp.task('watch', function() {
  gulp.watch(paths.scripts, ['scripts']);
  gulp.watch(paths.styles, ['styles']);
});

// The default task (called when you run `gulp` from cli)
gulp.task('default', ['scripts', 'styles', 'watch']);