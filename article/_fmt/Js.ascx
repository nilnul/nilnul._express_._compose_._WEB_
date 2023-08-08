<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.counter" TagPrefix="cc1" %>
<%@ OutputCache Shared="true" VaryByCustom="l" VaryByParam="l" Duration="360000000" %>

<%@ Import Namespace="System.IO" %>
<%--  format an article:
	numbering
		sections
		figures
		talbes
		formulas (2bd, see app_.ra2nd)
	populate:
		references
	insert bibliography(2bd)

<cc1:CounterContext runat=server parentId="" prefix="" infix="." suffix="&nbsp;" ></cc1:CounterContext>

--%>
<% #if false %>
<script>
		<% #endif %>
	(function (nilnul) {
		nilnul.express = {};

		<%--
		@ord, the heading  of article is 0. the section is of ord 1. subsection is of ord 2, 3, .., 9. ord is rarely gt 9

		in em
	--%>
		var fontSize = function (ord, paraFont = 1,bottomHead=9,stepIncrease=0.1) {

			if (ord>bottomHead) {
				return paraFont;
			}
			return 1+(bottomHead - ord) * stepIncrease;

		};
		<%--  stickyTop: 
			the top of the heading of this section
	;
	prefix:
		eg: 
			"",
			1.2.1.   note the "."
	--%>
		var insideSection = function (section, prefix, counter, infix, suffix, stickyTop) {
			stickyTop = stickyTop || 0;

			var $h1 = $("h1:first-of-type", section);
			var h1 = $h1[0];

			var newPrefix = prefix + counter + infix
			
			//if (suffix===' ') {
			//	suffix = '&nbsp;';
			//}

				,
			hier = prefix.split(infix).length;

			var size = fontSize( prefix.split(infix).length)
				,
				newStickyTop = stickyTop + size
				,
				sizeWithUnit= size.toString() + "em"
			;
			

			$h1.css("font-size",sizeWithUnit);
			$h1.css({position:"sticky", top: stickyTop + "em", left: 0});

			h1.insertBefore(document.createTextNode(prefix + counter <%--+ infix--%> + suffix), h1.firstChild);

			var subs = Array.prototype.filter.call(
				section.childNodes
				,
				function (e, i, c) {
					return e.nodeName === "SECTION"
				}

			);

			for (var i = 0; i < subs.length; i++) {

				insideSection(subs[i], newPrefix, i + 1, infix, suffix,newStickyTop)

			}


		};
		/// @sticky: the sticky of the headline of the section that is container of the @childNodes
		var torsoFmt = function (childNodes, prefix = "", infix = ".", suffix = ") ", sticky=0) {
			
			var subs = Array.prototype.filter.call(
				childNodes
				,
				function (e, i, c) {
					return e.nodeName === "SECTION"
				}

			);

			var size = fontSize( prefix.split(infix).length )
				,
				newStickyTop = sticky + size
				;

			for (var i = 0; i < subs.length; i++) {

				insideSection(subs[i], prefix, i + 1, infix, suffix,newStickyTop)

			}

		};

		<%--  find all the sections inner of an article--%>
		var findTopSection = function (container, initial, prefix, infix, suffix) {
			var $section = $("section:first", container);


			if ($section.length > 0) {
				var section = $section[0];
				var subs = Array.prototype.filter.call(
					section.parentElement.childNodes
					,
					function (e, i, c) {
						return e.nodeName === "SECTION"
					}

				);
				for (var i = 0; i < subs.length; i++) {

					insideSection(subs[i], prefix, i + initial, infix, suffix,0)
				}


			}

		};

		<%-- format an article--%>
		
		nilnul.express.compose= function (articleEle, initial, prefix, infix, suffix) {
			container = articleEle || $("article:first")[0] || window.document.body;
			initial = initial || 1;
			prefix = prefix || "";
			infix = infix || ".";
			suffix = suffix || "、 ";

			findTopSection(container, initial, prefix, infix, suffix);


			<%-- figures --%>

			var figures = container.getElementsByTagName("figure");
			for (var i = 0; i < figures.length; i++) {
				var figLabel = "图" + (i + 1).toString();
				figures[i].getElementsByTagName("figcaption")[0].firstChild.insertData(0, figLabel + "、 ");
				figures[i].label = figLabel;

				$(figures[i]).css("text-align", "center");
			}

			var mathFormClass = "nilnul-math-form";

			var tables = Array.prototype.slice.call(container.getElementsByTagName("table")).filter(
							function (e, i, a) {
								return e.parentElement.nodeName !== 'FIGURE'
									&& !$(e).hasClass(mathFormClass)
									&& !$(e).hasClass("nilnul-number-exclude");
							}
			);
			for (var i = 0; i < tables.length; i++) {
				var tableLabel = "表" + (i + 1).toString();
				tables[i].getElementsByTagName("caption")[0].firstChild.insertData(0, tableLabel + "  ");
				tables[i].label = tableLabel;
				$(tables[i]).css("text-align", "center");
				$(tables[i]).css("margin-left", "auto");
				$(tables[i]).css("margin-right", "auto");

			}


			var maths = $("." + mathFormClass);

			for (var i = 0; i < maths.length; i++) {
				var mathLabel = "式" + (i + 1).toString();

				var tdMath = maths[i].rows[0].cells[0];
				$(tdMath).css("padding-left", "2em");

				var tdOrd = maths[i].rows[0].cells[1];

				tdOrd.textContent = mathLabel + "";

				maths[i].label = mathLabel;

				$(tdOrd).css("text-align", "right");
				$(maths[i]).css({
					"width": "100%"
					,
					border: "0px"
				});

				$(maths[i]).find("tr, td").css("border", "0px");


			}

			<%--  --%>
			var refs = Array.prototype.slice.call(container.getElementsByTagName("a")).filter(
				function (e, i, a) {
					return (
						(e.getAttribute("href") || "").toString() + " "
					)[0] === "#"
						&&
					(
						e.children.length === 0 &&  nilnul.txt.nulable.be_.nulOrWhite(e.textContent )
						||
						(e.children.length === 1 && !e.textContent)
					);
				}
			);



			for (var j = 0; j < refs.length; j++) {
				var attrHref = refs[j].getAttribute("href");
				let e = document.getElementById(
					attrHref.substr(1)
				);
				if (e===null) {
					console.error(
						refs[j].getAttribute("href") + " led by #, the subsequent as id fails to refer to an element."
					);
					continue;
				}
				var anchor =e.label??( e.getAttribute("label")?.toString() )?? e.dataset.label ??e.getAttribute("aria-label")?.toString();

				refs[j].textContent =anchor;<%-- alias: label, anchor--%>
			}

		};
		nilnul.article = nilnul.express.compose;
		nilnul.express.compose.torso = torsoFmt;


	})(
		nilnul
	)
	;
	<% #if false %>
</script>
<% #endif %>
