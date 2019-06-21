// 1
function setTab(name,cursel,n){
for(i=1;i<=n;i++){
  var menu=document.getElementById(name+i);
  var con=document.getElementById("con_"+name+"_"+i);
  menu.className=i==cursel?"hover":"";
  con.style.display=i==cursel?"block":"none";
}
}

  
function killerrors() { 
return true; 
} 
window.onerror = killerrors; 


//setSize
function doZoom(size)
{document.getElementById('zoom').style.fontSize=size+'px';

document.getElementById('zoom').style.lineheight=size+'pt';
}

function printPage(){
	window.print();
}

function setColor(color_val){
document.getElementById('NewsContent').style.backgroundColor=color_val;
}
function chk()
{
	if (document.form2.LoginName.value=="")
	{
		alert("用户名不能为空！");
		return false;
	}	
	
		if (document.form2.Pwd.value=="")
	{
		alert("密码不能为空！");
		return false;
	}	
}


function doSubmit(){
	if (document.SearchForm.SearchKey.value==''){
		alert("搜索关键字不能为空！");
		return false;
	}return true;
}

function checkInput()
{
	if(document.form1.name.value=='')
	{
		alert('姓名不可以为空！');
		return false;
	}
	
	if(document.form1.title.value=='')
	{
		alert('标题不可以为空！');
		return false;
	}
	if(document.form1.content.value=='')
	{
		alert('内容不可以为空！');
		return false;
	}
		if(document.form1.CheckCode.value=='')
	{
		alert('验证码不可以为空！');
		return false;
	}
	return true;
}
function checkInput2()
{
	if(document.form2.scm.value=='')
	{
		alert('请添写正确的12位查询码！');
		return false;
	}
	
	if(document.form2.CheckCode.value=='')
	{
		alert('验证码不可以为空！');
		return false;
	}
		return true;
}
function checkInput3()
{
	if(document.repgo.scm.value=='')
	{
		alert('请添写正确的12位查询码！');
		return false;
	}
		return true;
}
function checkInput4()
{
	if(document.form1.name.value=='')
	{
		alert('姓名不可以为空！');
		return false;
	}
	
	if(document.form1.title.value=='')
	{
		alert('标题不可以为空！');
		return false;
	}
	if(document.form1.content.value=='')
	{
		alert('内容不可以为空！');
		return false;
	}
		if(document.form1.CheckCode.value=='')
	{
		alert('验证码不可以为空！');
		return false;
	}
	return true;
}