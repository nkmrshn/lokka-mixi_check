Lokka mixi Check
================

This is a [Lokka](http://lokka.org) plugin to add ["mixi Check"](http://developer.mixi.co.jp/connect/mixi_plugin/mixi_check/spec_mixi_check) link.

Installation
------------

Run these commands:

    $ cd public/plugin
    $ git clone git://github.com/nkmrshn/lokka-mixi_check.git

Usage
-----

You can set options in the admin page [Plugins]->[Mixi Check]. Please set the "Check key".

The helper method is "mixi_check".  Don't forget to modify the theme template. If the mixi_check method called without any parameter, current page URL will be used. If you want to specify the URL, call the method with String parameter like:

    <%= mixi_check("http://example.com/foo/bar/") %>

Notice
------

Before you use this plugin, you need to register your app at mixi [Developer Dashboard](https://sap.mixi.jp/) and get the Check Key.

Also, if you want to specify the title and description, to add a xmlns property to the html element, please add "html_properties" helper method to html element:

    <html<%= html_properties %>

For more details, please read the [Technology Specification](http://developer.mixi.co.jp/connect/mixi_plugin/mixi_check/spec_mixi_check) in mixi Developer Center.
