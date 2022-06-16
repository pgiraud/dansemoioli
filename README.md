About
=====

Site de l'école de danse Moioli.

Deploy
======

Site built with Jekyll.

Serve with jekyll:

```
jekyll serve --watch --baseurl=
```

or with docker-compose:
```
docker-compose run --service-ports site
```

or with docker:
```
docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll -it -p 127.0.0.1:4000:4000 jekyll/jekyll:3.8 jekyll serve --livereload
```
