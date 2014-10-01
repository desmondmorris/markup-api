# Markup API
## Description
A JSON API that returns HTML for the IBM Cloud Marketing properties. Can be used
by client-side applications with a [JSONP
callback](http://en.wikipedia.org/wiki/JSONP).

Built for the IBM Cloud Lab.

## Usage

### Getting Started

To get started, make a GET request to the API endpoint. Here's a command line
example using cURL:

```bash
$ curl http://markup.content.ibmcloud.io/api/v1/cloud.json
```

You'll receive a sample response back as the markup elements this API was designed
to return are still being built.

By default, the endpoint will return a JSON
data object which can be used both on the server-side or the client-side. In
order to use the API on the client-side with AJAX, you'll need to use
[JSONP](http://en.wikipedia.org/wiki/JSONP) to work around the [same
origin policy](http://en.wikipedia.org/wiki/Same-origin_policy).

To trigger a JSONP response, simply append `?callback=render` to the request
like so:

```bash
$ curl http://markup.content.ibmcloud.io/api/v1/cloud.json?callback=render
```

### Data Structure

Each JSON object will contain two keys: `html` and `css`. Together, they
comprise all that is needed to render a fully-styled page component.

Here's an example response:

```json
{
  "html": "<h1>Hello World!</h1>",
  "css": "h1 { color: #333 }"
}
```

### Client-side Example

To use the API response on the client side you'll need to use JSONP.

Write a callback function called
`render` to handle the API response then simply call an API endpoint from a
`<script>` tag. Make sure to use the correct endpoint by appending 
`?callback=render` to your request.

Here's a simple implementation using jQuery:

```html
<script type="text/javascript" charset="utf-8">
  function render(data) {
    $('#target').append(data.html);
  }
</script>

<script src="http://markup.content.ibmcloud.io/api/v1/cloud.json?callback=render"></script>
```

## Demo
A working demo of the above approach can be [viewed
online](http://mmwtsn.github.io/markup-api/). The source code is available on
the [GitHub Pages](https://github.com/mmwtsn/markup-api/tree/gh-pages) branch of
this repository.

## Author
[M. Maxwell Watson](http://mmwtsn.com/)

## License
©2014 M. Maxwell Watson. The Markup API Demo is free software, and may be
redistributed under the terms specified in the
[LICENSE](https://github.com/mmwtsn/markup-api/blob/master/LICENSE) file. The
IBM name and logo are trademarks of IBM and may not be used without permission.
