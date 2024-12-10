<!-- Tách riêng các Order của trang Dashboard ra để tái sử dụng -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- ======= Order Template ======= -->
<tr>
	<td class="text-center" style="border-right: 1px solid #ddd;">${param.orderId}</td>
	<td style="border-right: 1px solid #ddd;">${param.client}</td>
	<td class="text-center" style="border-right: 1px solid #ddd;">${param.totalPrice}</td>
	<td class="text-center" style="border-right: 1px solid #ddd;">
		<div class="badge badge-pill ${param.statusClass} w-100 text-center">${param.status}</div>
	</td>
	<td class="text-center" style="border-right: 1px solid #ddd;">${param.orderDate}</td>
	<td class="text-center">
		<div class="d-flex justify-content-center">
			<a href="view_order.jsp?id=${param.orderId}" class="btn btn-info btn-sm mx-1">View</a>
			<a href="edit_order.jsp?id=${param.orderId}" class="btn btn-warning btn-sm mx-1">Edit</a>
			<button class="btn btn-danger btn-sm mx-1" onclick="deleteOrder('${param.orderId}')">Delete</button>
		</div>
	</td>
</tr>