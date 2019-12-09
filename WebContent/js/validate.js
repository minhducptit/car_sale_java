//validate form login
function validateFormLogin(){
		var err="";
		var userName = document.getElementById("userName").value;
		var password = document.getElementById("password").value;
		var regexUserName =/^[a-z0-9_.-@]{3,15}$/;
		var regexPassword= /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
		if(!regexUserName.test(userName)){
			alert("UserName phải có 3-15 ký tự bao gồm các kí tự từ a-z 0-9 _ - . @");
			err+=" username";
		}
		if(!regexPassword.test(password)){
			alert("Password phải có tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường và một số:");
			err+=" password";
		}
		if(err.length>0) return false;
		return true;
}
//validate form sign up
function validateFormSignUp() {
	var userName = document.getElementById("userName").value;
	var password = document.getElementById("password").value;
	var fullName = document.getElementById("fullName").value;
	var age = document.getElementById("age").value;
	var address = document.getElementById("address").value;
	var phone = document.getElementById("phone").value;
	var email = document.getElementById("email").value;
	var regexUserName =/^[a-z0-9_.-@]{3,15}$/;
	var regexPassword= /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
	var regexAge=/^(?:1[01][0-9]|120|1[7-9]|[2-9][0-9])$/;
	var regexPhone=/[0-9]{10}/;
	var regexEmail= /^[a-z][a-z0-9_\.]{5,32}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$/;
	var err="";
	if(!regexUserName.test(userName)){
		alert("UserName phải có 3-15 ký tự bao gồm các kí tự từ a-z 0-9 _ - . @");
		err+=" username";
	}
	if(!regexPassword.test(password)){
		alert("Password phải có tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường và một số:");
		err+=" password";
	}
	if(fullName.includes("'")||fullName.includes("--")||fullName==""){
		alert("Fullname không được để trống và không được có kí tự ' hoặc --");
		err+=" fullName";
	}
	if(!regexAge.test(age)){
		alert("Age từ 17-120");
		err+=" age";
	}
	if(address.includes("'")||address.includes("--")||address==""){
		alert("Address không được để trống và không có kí tự ' hoặc --");
		err+=" address";
	}
	if(!regexPhone.test(phone)){
		alert("Số điện thoại phải có 10 chữ số");
		err+=" phone";
	}
	if(!regexEmail.test(email)){
		alert("địa chỉ email phải bắt đầu bằng 1 ký tự " +
				"+ địa chỉ email là tập hợp của các ký tự a-z, 0-9 " +
				"và có thể có các ký tự như dấu chấm, dấu gạch dưới " +
				"+ độ dài tối thiểu của email là 5, " +
				"độ dài tối đa là 32 + " +
				"tên miền của email có thể là tên miền cấp 1 or tên miền cấp 2");
		err+="email"
	}
	if(err.length>0) return false;
	return true;
}