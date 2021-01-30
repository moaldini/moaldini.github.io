<%@ page import="database.Items" %><%--
  Created by IntelliJ IDEA.
  User: mohammedaldini
  Date: 1/28/21
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="module/header.jsp" %>
  <!-- Content ============================================= -->
  <section id="content">
    <div class="content-wrap">
      <div class="container clearfix">

        <div class="topmargin-lg clearfix" id="tab-3">
          <% request.setAttribute("items", Items.itemList);%>
          <div class="shop row gutter-30">
            <c:forEach var="item" items="${items}">
            <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
              <div class="grid-inner">
                <div class="product-image">
                  <a href="#"><img src="<c:url value='resources/images/shop/pants/1.jpg'/>" alt="Checked Short "></a>
                  <a href="#"><img src="<c:url value='resources/images/shop/pants/1-1.jpg'/>" alt="Checked Short "></a>
                  <div class="sale-flash badge badge-success p-2">50% Off*</div>
                  <div class="bg-overlay">
                    <div class="bg-overlay-content align-items-end justify-content-between" data-hover-animate="fadeIn" data-hover-speed="400">
                      <a href="cart.jsp" class="btn btn-dark mr-2"><i class="icon-shopping-basket"></i></a>
                    </div>
                    <div class="bg-overlay-bg bg-transparent"></div>
                  </div>
                </div>
                <div class="product-desc">
                  <div class="product-title"><h3><a href="#">${item.item_name}</a></h3></div>
                  <div class="product-price"><ins>$${String.format("%.2f", item.price)}</ins></div>

                </div>
              </div>
            </div>
            </c:forEach>
          </div>
        </div>

      </div>
    </div>
  </section><!-- #content end -->
<%@include file="module/footer.jsp" %>