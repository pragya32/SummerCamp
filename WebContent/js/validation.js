function checkEmpty(data) 
{
	if(data.length==0)
	return false;
	else
		return true;
}

function checkCombo(info)
{
	if(info=="Select City")
		return false;
	else
		return true;
}

function checkLength(data)
{
 if(data.length<=12)
	 return false;
 else
	 return true;

}