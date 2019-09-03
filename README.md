![Workbench](http://s3.amazonaws.com/dfc-wiki/en/images/b/b5/Workbench_logo.png)

Workbench is a powerful, web-based suite of tools designed for
administrators and developers to interact with Salesforce.com
organizations via the Force.com APIs. Workbench includes robust support
for the Force.com Partner, Bulk, Rest, Streaming, Metadata, and Apex APIs that allows
users to describe, query, manipulate, and migrate both data and metadata
in Salesforce.com organizations directly in their web browser with a
simple and intuitive user interface. Workbench also provides many
advanced features for testing and troubleshooting the Force.com APIs,
such as customizable SOAP headers, debug logs for API traffic, backward
compatibility testing with previous API versions, and single sign-on
integration within the Salesforce application.

This docker image is based on the [PHP 7.2 Apache image](https://github.com/docker-library/php).

Getting Started
---------------
Create and start a container from the image and access Workbench at the specified localhost address.

```
> docker container create -P --name workbench macgoober/forceworkbench:latest
> docker container start workbench
```

Workbench will be availble on the published port and the `/workbench` path, e.g. `http://localhost:32769/workbench`

Support
-------
Please note that the **Workbench is NOT a supported product of or supported by salesforce.com, inc.** For support from the Open Source community, please visit this project's pages below:

* [Workbench Stackoverflow](https://salesforce.stackexchange.com/questions/tagged/workbench)
* [Workbench Issues, Bugs, & Feature Requests](https://github.com/forceworkbench/forceworkbench/issues)
* [Workbench Source](https://github.com/forceworkbench/forceworkbench)

Learning more about Workbench
-----------------------------
 - [Wiki](https://github.com/forceworkbench/forceworkbench/wiki)
 - [FAQs](https://github.com/forceworkbench/forceworkbench/wiki#faq)