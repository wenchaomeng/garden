<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="res" uri="http://www.unidal.org/webres"%>
<jsp:useBean id="navBar" class="com.dianping.garden.view.NavigationBar" scope="page"/>

<res:bean id="res"/>
<html>
	<head>
		<title>Garden - ${model.page.description}</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<res:cssSlot id="head-css"/>
		<res:jsSlot id="head-js"/>
		<res:useCss value='${res.css.local.body_css}' target="head-css"/>
	</head>
	<body>
		<h1>
			${model.page.description}
		</h1>
		<ul class="tabs">
			<c:forEach var="page" items="${navBar.visiblePages}">
				<c:if test="${page.standalone}">
					<li ${model.page.name == page.name ? 'class="selected"' : ''}><a href="${model.webapp}/${page.moduleName}/${page.path}">${page.title}</a></li>
				</c:if>
			</c:forEach>
		</ul>

		<jsp:doBody />
	</body>
</html>
