# FontServe
### Your very own font hosting service

## Summary

When Google Fonts would be awesome, but is out of the question...
With FontServe, you can create an account and upload the fonts you need
to use in your projects - make sure to include TTF, OTF and WOFF2 at a
minimum.

FontServe will generate a practical link that you can include in your
stylesheets, just as you would with Google Fonts:

*Standard*
```
<link href="https://acme.fontserve.com/css?family=Acme+Sans" rel="stylesheet">
```

*@import*
```
<style>
@import url('https://acme.fontserve.com/css?family=Acme+Sans');
</style>
```

To use your font(s) in a project, add a single CSS rule to your
stylesheet:

```
font-family: 'Acme Sans', sans-serif;
```

Now, whenever a visitor hits your website, they'll make a request to our
FontServe server. Here, we check which fonts their browser supports and
return a custom-made CSS file like this:

```
/* latin */
@font-face {
  font-family: 'Acme Sans';
  font-style: normal;
  font-weight: 400;
  src: local('Acme Sans Regular'), local('AcmeSans-Regular'), url(https://acme.fontserve.com/static/verycrypticfilename.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2212, U+2215;
}
```

## Todos

### MVP
* have index page to list all available fonts with correct embed link
* check incoming request and detect browser
* build "checking engine": if browser==chrome, serve woff2 file, etc.
* return text with correct static file (uploaded via console)

### Next stage
* build login
* create frontend to upload font files

### Pro stage
* let users create their own sub-domain (`acme.fontserve.com`)
* include payment engine
* switch asset hosting to CDN for faster delivery

## Mockup
![Mockup](https://i.imgur.com/T9f1pw9.png)
