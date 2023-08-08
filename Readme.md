# nilnul express for composition
(codename: `nilnul._express_._compose_._WEB_`)

Write an article (treatise, dissertation, report, solution) using purely web technologies (Html, Css, Js).
The generated article can be browsed in a web browser; You don't need a 3rd party proprietary software such as Word Processor to view it.
You can utilize a web server technology to generate such webpage. In this project, we use Asp.Net webform.

To write an article using this method, you have a full tool chain to help you manage source code. For example, you can use git to diff any changes you have made between two different snapshots.
Also your article can be decomposed into components recursively, and be reused in other article. You can simply drag and drop some simple or compound compound (part of your article) into one of many articles.

To change the format of your article, it's as simple as to change a Css theme (a set of css stylesheets, which can be assembled into a monolithic component as well).

## Reference this project in your article

This project provides some basis artefacts to be referenced in your article, a webpage.
Another repo (`nilnul._express_._compose_.WEB._CTR_`) wrapps the parts of this project into Asp.Net webcontrols. When you add that to your web app's references, in your visual studio, you shall see some tools appear in your toolbar, from where then you can drag a control into your webpage such as a webform.

Repo: `nilnul._express_._compose_.WEB.CTR._DEMO_` demonstrates how your web app project for an article shall looks a like. That's a fully functional demo in that it references `nilnul._express_._compose_.WEB._CTR_`, and composes an article using the controls, which is then rendered out as a webpage.

## Contribute

You should clone the above mentioned three repos into a same parent folder. `nilnul._express_._compose_.WEB.CTR._DEMO_` is the facade project, and you should test run it to have a general view of how things work out. The test run shall render a fully composed article.
