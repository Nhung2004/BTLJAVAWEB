<!-- Tách riêng các Order của trang Dashboard ra để tái sử dụng -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- ======= Order Template ======= -->
<tr>
	<td class="text-center" style="border-right: 1px solid #ddd;">${param.orderId}</td>
	<td class="text-center" style="border-right: 1px solid #ddd;">${param.client}</td>
	<td class="text-center" style="border-right: 1px solid #ddd;">${param.paymentMethod}</td>
	<td class="text-center" style="border-right: 1px solid #ddd;">
		<div class="badge badge-pill ${param.statusClass} w-100 text-center">${param.status}</div>
	</td>
	<td class="text-center" style="border-right: 1px solid #ddd;">${param.orderDate}</td>
	<td class="text-center">
		<button class="btn btn-sm btn-outline-info me-2" data-bs-toggle="modal" data-bs-target="#viewOrderModal">
			<i class="fas fa-eye"></i>
			View
		</button>
		<button class="btn btn-sm btn-outline-warning me-2" data-bs-toggle="modal" data-bs-target="#editOrderModal">
			<i class="fas fa-edit"></i>
			Edit
		</button>
		<button class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteOrderModal">
			<i class="fas fa-trash-alt"></i>
			Delete
		</button>
	</td>

</tr>
