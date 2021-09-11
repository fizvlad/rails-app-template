# Rails App Template

This is a template repository for creating Ruby On Rails application

## RoR

Rails application was created with following command:
```
rails new . --skip-sprockets --skip-spring --skip-jbuilder --skip-test
```

 - No `sprockets`: use webpack instead
 - No `spring`: see [rails/rails#42997](https://github.com/rails/rails/pull/42997)
 - No `jbuilder`: opinion-based decision; I prefer [`blueprinter` gem](https://github.com/procore/blueprinter)
 - No `minitest`: use rspec instead

## Github Actions

Automatically launched for every commit and PR into master. Runs `rake` command (rubocop, erblint, eslint, rspec)

## Rubocop

See [configuration file](https://github.com/fizvlad/rails-app-template/blob/master/.rubocop.yml)

## ERBLint

See [configuration file](https://github.com/fizvlad/rails-app-template/blob/master/.erb-lint.yml)

## ESLint

See [configuration file](https://github.com/fizvlad/rails-app-template/blob/master/.eslintrc.yml)

## Rubocop

Coverage check is disabled

## i18n

It is... configured 🤷‍♂️

## BEM

Created with BEM in mind. Place your assets into `app/assets/` and create packs by configuring files in `app/javascript/packs`. Pass packs requirements using `content_for :packs` in your views

## CSS normalization

Normalize is already included in application layout pack

## Meta and SEO

Pass all the meta using `content_for :meta`. Note that title of page in development environment is prepended with 'DEV |'
