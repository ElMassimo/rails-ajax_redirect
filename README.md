Rails::AjaxRedirect
=====================
[![Gem Version](https://badge.fury.io/rb/rails-ajax_redirect.svg)](http://badge.fury.io/rb/rails-ajax_redirect)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/ElMassimo/rails-ajax_redirect/blob/master/LICENSE.txt)

Simple `redirect_to` support for AJAX requests in non-Turbolinks applications.

## Installation

Add this line to your application's Gemfile:

    gem 'rails-ajax_redirect'

Or install it yourself as:

    gem install rails-ajax_redirect

## Usage

Require `rails-ajax_redirect` in your `application.js`:

``` javascript
//= require rails-ajax_redirect
```

`AjaxRedirect` extends `redirect_to` to use a custom status code for ajax
requests, while still setting the `Location` header.

The script adds a handler for the `ajax:success` event, that navigates to the
location in the header for responses that have the custom status code.

Now you will be able to write controller actions in the usual way :smiley:

## Turbolinks

If your application uses Turbolinks check out [`turbolinks-redirect`](https://github.com/remind101/turbolinks-redirect), on which this library is based on. The advantage is that
it will perform faster navigation by leveraging Turbolinks to visit the new
location.

License
--------

    Copyright (c) 2015 Máximo Mussini

    Permission is hereby granted, free of charge, to any person obtaining
    a copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:

    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
