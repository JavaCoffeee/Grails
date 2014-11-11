







 
<HTML>
<head>
<LINK href="/IBPOSprod/renpos.css" rel="stylesheet" type="text/css">
<title>POS System</title>

</head>
<body leftmargin="0" marginwidth="0" marginheight="0" TOPMARGIN="0">

<input type=hidden name = "hidVehCount" value="0">

<table align=center border="0" cellpadding="0" cellspacing="0" width="780px" bgcolor="#D5DEE8">
  <tr>
    <td valign="top"><!-- /** This file forms part of the System Task Group International Limited      
* Copyright (c) STG 2006 - 2010.  All  rights reserved *
*
* $Revision: 28 $
*
* $Header: /RenPOS/WebRoot/jsp/template/header.jsp 34    4/11/11 5:08p Madan.kumar $
*
* $Log: /RenPOS/WebRoot/jsp/template/header.jsp $ 
 * 
 * 34    4/11/11 5:08p Madan.kumar
 * CQ 4842 changes
 * 
 * 33    4/07/11 3:04p Madan.kumar
 * CQ 4842 changes
 * 
 * 31    9-02-10 2:25p Rvarma
 * MERGING OF INTERBORO ISO PROPJECT WITH AAIS CHANGES
 * 
 * 33    1-12-09 7:12p Rvarma
 * CHANGES TO SHOW THE INTERBORO LOGO RATHER THAN RENPOS LOGO
 * 
 * 32    1-12-09 11:36a Rvarma
 * CHANGES DONE FOR INTERBORO ISO POS LOGIN CHANGES
 * 
 * 30    5/07/09 1:06p Ramkumar
 * by RamKumar for IB00005383
 * 
 * 29    6/06/08 1:58p Kailas
 * Added standard tag tld settings
 * 
 * 28    5/16/08 12:12p Rishiraj
 * 
 * 27    4/28/08 10:29a Rishiraj
 * 
 * 26    4/22/08 2:15p Rishiraj
 * 
 * 25    4/11/08 11:16p Rishiraj
 * 
 * 24    2/28/08 7:11p Kailas
 * email ID added
 * 
 * 23    2/28/08 7:10p Kailas
 * email ID added
 * 
 * 22    2/28/08 7:00p Vinayak
 * 
 * 21    2/28/08 4:35p Vinayak
 * 
 * 20    2/15/08 7:47p Vinayak
 * 
 * 19    2/04/08 5:56p Kailas
 * Added bgcolor=#D5DEE8 and normalLink to display header
 * 
 * 18    2/04/08 5:51p Kailas
 * Chane position of from end tag bottom to top to remove space between
 * Menu
 * 
 * 17    1/31/08 5:55p Kailas
 * Commented Form to remove space between Menu
 * 
 * 16    12/24/07 1:35p Kailas
 * 
 * 15    12/20/07 2:55p Kailas
* 
*/ -->






<HTML>
<head>
<LINK href="/IBPOSprod/renpos.css" rel="stylesheet" type="text/css">

 <meta http-equiv="pragma" content="no-cache">
 <meta http-equiv="cache-control" content="no-cache">
 <meta http-equiv="expires" content="1">
    
<script language="JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function workQueMain()
{

  if (document.headerForm.hidWorkQueStatus.value =='Yes')
     {
		//alert(document.headerForm.hidWorkQueStatus.value);
		window.open(document.headerForm.hidContextPath.value+'/workQueue.do','WorkQue1','top=150,left=250,height=140,width=450,buttons=no,scrollbars=no,status=no,toolbar=no,location=no,directories=no,resizable=no,menubar=no');
	 }	
}

function workQueHeader()
{
		//alert(document.headerForm.hidContextPath.value);
		window.open(document.headerForm.hidContextPath.value+'/workQueue.do','WorkQue1','top=150,left=250,height=140,width=450,buttons=no,scrollbars=no,status=no,toolbar=no,location=no,directories=no,resizable=no,menubar=no');
		//window.open('/RenPos/workQue.do','WorkQue1','top=150,left=250,height=140,width=450,buttons=no,scrollbars=no,status=no,toolbar=yes,location=no,directories=no,resizable=yes,menubar=yes');
}
//-->

</script>
</head>

<body leftmargin="0" marginwidth="0" marginheight="0" TOPMARGIN="0" onLoad="workQueMain(); MM_preloadImages('/IBPOSprod/images/Home_over.gif','/IBPOSprod/images/inquiry_over.gif','/IBPOSprod/images/contact_over.gif','/IBPOSprod/images/Logout_over.gif','/IBPOSprod/images/quickquote_over.gif','/IBPOSprod/images/retrieve_over.gif')">
<form name="headerForm" method="post">

   
      
<input type="hidden" name="hidWorkQueStatus" value="null">
<input type="hidden" name="hidContextPath" value="/IBPOSprod">

</form> 
<table align=center cellSpacing="0" cellPadding="0" width="780" border="0" height="83" background="/IBPOSprod/images/Top_BG.gif">
<tr height="72">
    <!-- Removed the RenPOS.gif width 130px for IB00005383 by RamKumar -->
	
    <td valign="top">
    	

    
    
    <!-- Increased the Images width 650px to 780px for IB00005383 by RamKumar -->
	
    <td vAlign="top" align="right" width="780px">
    		<a href="/IBPOSprod/home.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image18','','/IBPOSprod/images/Topicon_over_main.gif',1)"><img name="Image18" border="0" src="/IBPOSprod/images/Topicon_Normal_main.gif" width="55" height="60"></a>
    		
    		<a href="/IBPOSprod/login.do?fetchUserSubLine=FALSE&changeline=TRUE" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image17','','/IBPOSprod/images/Topicon_over_Auto.gif',1)"><img name="Image17" border="0" src="/IBPOSprod/images/Topicon_Normal_Auto.gif" width="55" height="60"></a>
    		
            
            
            
           	<a href="/IBPOSprod/subMenuHO.do?subMenu=POL_INQ_HO" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image19','','/IBPOSprod/images/inquiry_over.gif',1)"><img name="Image19" border="0" src="/IBPOSprod/images/Inquiry_Normal.gif" width="54" height="60"></a>
           	
 			<a href="/IBPOSprod/onlineReport.do"><img src="/IBPOSprod/images/OnlineReports.gif" width="54" height="60" border="0" ></a>
            <a href="javascript:workQueHeader();" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('ImageW','','/IBPOSprod/images/workqueue_over.gif',1)"></a>

            <a href="/IBPOSprod/Diary.do?Display=First" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image22','','/IBPOSprod/images/dairy_over.gif',1)"><img name="Image22" border="0" src="/IBPOSprod/images/dairy_normal.gif" width="54" height="60"></a>
            <a href="/IBPOSprod/Notes.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image23','','/IBPOSprod/images/notepad_over.gif',1)"><img name="Image23" border="0" src="/IBPOSprod/images/notepad_normal.gif" width="54" height="60"></a>  
           
           <a href="mailto:Marketing@interboroinsurance.com" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image20','','/IBPOSprod/images/contact_over.gif',1)"><img name="Image20" border="0" src="/IBPOSprod/images/contact.gif" width="54" height="60"></a>
            <a href="/IBPOSprod/index.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image21','','/IBPOSprod/images/Logout_over.gif',1)"><img name="Image21" border="0" src="/IBPOSprod/images/Logout.gif" width="54" height="60"></a>
            <table width="100%" align="Right" cellSpacing="0" cellPadding="0" border="0" >
				<tr>
					<td align=center  VALIGN=bottom class="fieldLable">
					
					
					</td>
				</tr>
				
			</table>
	</td>
	
</tr>
<tr ><td colspan="2">


<table width="100%" align="Right" cellSpacing="0" cellPadding="0" border="0" bgcolor=#D5DEE8>
			
<!-- -ADDED by rahul d on 28 Feb 2008 for border start -->
			 <tr height="5">
				<td valign="top" colspan="4">
    			<img src="/IBPOSprod/images/Border.gif" width="780px" height="2"></td></tr>
    			<tr>
				
			<!-- -ADDED by rahul d on 28 Feb 2008 for border end -->
			

			<tr >
				<td align=left  VALIGN=top class="fieldLable" wrap="true">
				User:<span class="normalLink"> ISLIP LIGHTHOUSE INC</span>
				</td>
			
				<td align=center  VALIGN=top class="fieldLable" wrap="true">
				 
							Producer: &nbsp;<span class="normalLink">ISLIP LIGHTHOUSE, INC.</span>
							
				</td>
			
				<td align=center  VALIGN=top class="fieldLable" wrap="true">
					
								Product:&nbsp;<span class="normalLink">HOMEOWNERS</span>
					
				</td>
				<td align=right  VALIGN=top class="fieldLable" wrap="true">
					
					
				</td>
			</tr>
			<!-- -ADDED by rahul d on 28 Feb 2008 for border start -->
			
			 <tr height="5">
				<td valign="bottom" colspan="4">
    			<img src="/IBPOSprod/images/Border.gif" width="780px" height="2"></td></tr>
    			<tr>
				
			<!-- -ADDED by rahul d on 28 Feb 2008 for border end -->
			
		</table></td></tr>
		
</table>


 
</body>
</HTML></td>
  </tr>
 
  <tr>
    <td><!--   /** This file forms part of the System Task Group International Limited      
* Copyright (c) STG 2006 - 2010.  All  rights reserved *
*
* $Revision: 28 $
*
* $Header: /RenPOS/WebRoot/jsp/template/menuApplicantHO.jsp 15    3/01/11 5:42p Rama.s $
*
* $Log: /RenPOS/WebRoot/jsp/template/menuApplicantHO.jsp $ 
 * 
 * 15    3/01/11 5:42p Rama.s
 * Checked out by Rama S for CQ# 9447
 * 
 * 14    31-07-10 12:30p Rvarma
 * Changes for CQ ID 8770
 * 
 * 13    19-03-10 6:15p Rvarma
 * Changes to view the Underwriting guidelines based on subline
 * 
 * 12    25-02-10 8:45p Rvarma
 * 
 * 11    17-02-10 7:06p Rvarma
 * 
 * 9     9-02-10 2:24p Rvarma
 * MERGING OF INTERBORO ISO PROPJECT WITH AAIS CHANGES
 * 
 * 8     1/21/10 5:54p Muthyam
 * for 7299 muthyam
 * 
 * 7     1/20/10 12:55p Muthyam
 * for CR-7229 Muthyam
 * 
 * 6     6/06/08 2:14p Kailas
 * Added standard tag tld settings
 * 
 * 5     5/16/08 11:22a Rishiraj
 * 
 * 4     3/25/08 9:26a Narayan
 * 
 * 3     1/09/08 2:40p Kailas
 * 
 * 2     12/21/07 2:47p Kailas
* 
*/
-->








<script>
function MM_openBrWindowdoc(theURL,winName,features) {
  window.open(theURL,winName,features);
}
</script>

<table cellspacing="0" cellpadding="0" width="100%" border="0">
  <tr>
  		<td width="5%" ><img src="/IBPOSprod/images/Dwelling.gif" alt="Dwelling" width="87" height="33" border="0" /></td>
  		<td width="3%"><img src="/IBPOSprod/images/QQ02.gif" alt="Coverage" width="87" height="33" border="0" /></td>  		
  		
  		<td  align="right" colspan="2" >
  			
  			&nbsp;&nbsp;
  			
  				
					<a href="Javascript:MM_openBrWindowdoc('/IBPOSprod/ISOForms.pdf','','scrollbars=yes,resizable=yes,width=850,height=690,left=0,top=0')" class="menuLink">ISO FORMS</a>&nbsp;&nbsp;
		   			<a href="Javascript:MM_openBrWindowdoc('/IBPOSprod/ISOEndorsements.pdf','','scrollbars=yes,resizable=yes,width=850,height=690,left=0,top=0')" class="menuLink">ISO ENDORSEMENTS</a>&nbsp;&nbsp;
		   		
						   			
		   	
  				
  					<a href="Javascript:MM_openBrWindowdoc('/IBPOSprod/ISOUnderwritingGuidelines.pdf','','scrollbars=yes,resizable=yes,width=850,height=690,left=0,top=0')"  class="menuLink">UW GUIDELINES
  					</a>
  				
				
  				
  				 		
  			&nbsp;
  			<a href="subMenuHO.do?subMenu=QQ_HO" class="menuLink">START NEW QUOTE</a>
  			&nbsp;
  			<!-- starts modified Muthyam for 7229 19.01.2010  <a href="Javascript:MM_openBrWindow('/IBPOSprod/Updated Proof of Reins 05-08.pdf','','scrollbars=yes,resizable=yes,width=850,height=690,left=0,top=0')" class="menuLink">REINSURANCE LETTER</a>-->
  			
			<a href="Javascript:MM_openBrWindowdoc('/IBPOSprod/Interboro_2011_Reinsurance_Comfort_Letter.pdf','','scrollbars=yes,resizable=yes,width=850,height=690,left=0,top=0')" class="menuLink">REINSURANCE LETTER</a>
  			
			
  		</td>
  		
  </tr>
</table></td>
  </tr>
  <tr>
    <td ><!--   /** This file forms part of the System Task Group International Limited      
* Copyright (c) STG 2006 - 2010.  All  rights reserved *
*
* $Revision: 1506 $
*
* $Header: /RenPOS/WebRoot/jsp/HOQuickQuote/CoveragesISOHO.jsp 34    10/17/11 2:24p Vaibhavs $
*
* $Log: /RenPOS/WebRoot/jsp/HOQuickQuote/CoveragesISOHO.jsp $ 
 * 
 * 34    10/17/11 2:24p Vaibhavs
 * CQ - 9819 changes done by Kirti
 * 
 * 32    4/28/11 7:17p Rama.s
 * Checked out by Rama S for CQ# 8433
 * 
 * 29    2/02/11 6:13p Virendrak
 * for 8433 & 8362
 * 
 * 28    2/01/11 12:14p Madan.kumar
 * Changes for  8433 by ashwini
 * 
 * 27    10/15/10 12:20p Madan.kumar
 * CQ - 8354 Changes
 * 
 * 26    8/23/10 5:37p Muthyam
 * For defect IB00008506 (Residence trustee).
 * 
 * 25    7/23/10 3:07p Muthyam
 * For defect IB00008491
 * 
 * 24    7/22/10 1:50p Muthyam
 * For defect IB00008521 (hard alert for additional coverages).
 * 
 * 23    27-05-10 2:49p Rvarma
 * Changes for Permitted Structure
 * 
 * 22    24-05-10 11:39a Rvarma
 * Changes for Off Premises Theft Coverage
 * 
 * 21    17-05-10 12:13p Rvarma
 * Changes for Land Lord Furnishings
 * 
 * 20    10-05-10 2:57p Rvarma
 * Changes for Land Lord Furnishings
 * 
 * 19    6-05-10 2:31p Rvarma
 * Changes for Land Lord Furnishings
 * 
 * 18    6-05-10 10:25a Rvarma
 * Scheduled Fine Arts Itemized Coverage Changes to add Location D
 * 
 * 17    3-05-10 5:28p Rvarma
 * Changes for Land Lord Furnishings
 * 
 * 16    30-04-10 3:39p Rvarma
 * Changes for Trustee Residence
 * 
 * 15    29-04-10 12:21p Rvarma
 * Changes for CQ id IB00008043
 * 
 * 14    19-04-10 12:46p Rvarma
 * Changes in Motorized Golf Cart where limit and deductible are b
 * 
 * 13    15-04-10 9:01a Rvarma
 * Changes for Issue 74
 * 
 * 12    12-04-10 9:06a Rvarma
 * Changes for Issue 181 in Interboro ISO UAT communication log
 * 
 * 11    4/05/10 4:41p Mrunali
 * change View Coverage link to View Coverage button...
 * 
 * 10    29-03-10 5:59p Rvarma
 * 
 * 9     24-03-10 12:40p Rvarma
 * CHANGES FOR CQ ID IB00007873
 * 
 * 8     3/22/10 11:21a Mrunali
 * changes related to loss assessment for additional location pop up
 * 
 * 7     18-03-10 2:17p Rvarma
 * Changes to Add the MultiPolicyDicsount in POS Worksheet screen
 * 
 * 6     3/09/10 4:40p Mrunali
 * undo changes done for i button ... instead of i button pop up should be
 * displayed...
 * 
 * 5     3/09/10 9:39a Mrunali
 * Need to Add I buttong info for Additional Residence Rented to Others
 * and Other Insured Location Occupied By Insured
 * 
 * 4     4-03-10 9:30a Rvarma
 * CHANGES FOR CQ ID IB00006988
 * 
 * 2     13-02-10 3:05p Rvarma
 * CHANGES TO CONDITIONAL DISABLE OF SAFETY FEATURES SECTION
 * 
 * 1     4-02-10 3:49p Rvarma
 * ADDED FOR INTERBORO ISO PROJECT
 * 
 * 13    4-02-10 11:29a Rvarma
 * changes for CQ id IB0006988
 * 
 * 12    2/01/10 6:42p Mrunali
 * changes related to new structures in coverage screen
 * 
 * 11    29-01-10 4:19p Rvarma
 * CHANGES FOR IB00007058
 * 
 * 10    22-01-10 8:53p Rvarma
 * 
 * 9     8-01-10 3:23p Rvarma
 * making the LIMIT  OF ADDITIONAL COVERAGES AS 10
 * 
 * 8     6-01-10 3:08p Rvarma
 * changes in the convert quote to application
 * 
 * 7     4-01-10 5:20p Rvarma
 * Changes for the max limit validation of scheduled coverages
 * 
 * 6     28-12-09 4:09p Rvarma
 * CHANGES TO CLOSE THE CONNECTION
 * 
 * 5     23-12-09 2:48p Rvarma
 * CHECKING OUT TO ADD THE ICON INFO FOR REDUCTION IN COVERAGE C
 * 
 * 4     23-12-09 2:46p Rvarma
 * CHECKING OUT TO ADD THE ICON INFO FOR REDUCTION IN COVERAGE C
 * 
 * 3     22-12-09 7:41p Rvarma
 * CHANGES FOR VALIDATIONS
 * 
 * 2     18-12-09 9:56a Rvarma
 * CHANGES FOR INTERBORO ISO PROJECT
 * 
 * 1     16-12-09 3:52p Rvarma
 * JSP CREATED  FOR  INTERBORO ISO COVERAGE SCREEN
 
* 
*/
-->


















<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html lang="en-US">
  <head>
    <base href="https://interboroquickquote.com/IBPOSprod/jsp/template/mainLayout.jsp">    
    <title>Home Owner ISO Coverage</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<SCRIPT src ='/IBPOSprod/scripts/CoverageISO.js'></SCRIPT>
		
	

  </head>
   






 

  <body>  	
   <form name="CoveragesFormISOHO" method="post" action="/IBPOSprod/HO/CoverageISOHO.do">
   <input type="hidden" name="subline" value="NYISO"> <!-- Added for 10584 -->	
    <div id="disableScreen" style="visibility:hidden;background-image:url(/IBPOSprod/images/blank.gif); width:790px; height:630px; position:absolute; top:70px; left:105px">
	</div>  		
	 <!--   /** This file forms part of the System Task Group International Limited      
* Copyright (c) STG 2006 - 2010.  All  rights reserved *
*
* $Revision: 10 $
*
* $Header: /RenPOS/WebRoot/jsp/HOQuickQuote/QuoteDetailsHO.jsp 10    9-02-10 2:31p Rvarma $
*
* $Log: /RenPOS/WebRoot/jsp/HOQuickQuote/QuoteDetailsHO.jsp $ 
 * 
 * 10    9-02-10 2:31p Rvarma
 * MERGING OF INTERBORO ISO PROPJECT WITH AAIS CHANGES
 * 
 * 12    18-12-09 9:56a Rvarma
 * CHANGES FOR INTERBORO ISO PROJECT
 * 
 * 11    14-12-09 8:37p Rvarma
 * CHANGES FOR BEAN TAG USED FOR BEAN:DEFINE
 * 
 * 9     6/27/08 2:17p Rvarma
 * 
 * 8     4/16/08 12:15p Rishiraj
 * 
 * 7     4/11/08 1:44p Rishiraj
 * 
 * 6     4/11/08 1:43p Rishiraj
 * 
 * 5     3/15/08 8:57p Rvarma
 * 
 * 4     1/07/08 11:43a Kailas
 * 
 * 3     12/24/07 3:49p Kailas
 * 
 * 2     12/21/07 2:44p Kailas
* 
*/
-->










<table align=center border="0" cellspacing="0" cellpadding="0"  width="100%">

	      	
	      	<tr>
	  			<td>
					<table align=center border="0" cellspacing="0" cellpadding="0"  width="100%" class="outerTableBody">
						<tr class="sectionTitle">
							<td width="18%">Quote/Revision No:</td>
							<td width="15%">260882/1
							</td>
							<td width="12%" >Effective Date:</td>
							<td width="18%">11/07/2014</td>
							<td width="13%" >Expiration Date:</td>
							<td width="14%">11/07/2015</td>							
							
							
						</tr>
						
						<tr class="sectionTitle">
							<td width="18%">Quote Term:</td>
							<td width="15%">ANNUAL POLICY</td>
							<td width="12%">Producer:</td>							
							<td  colspan="3">ISLIP LIGHTHOUSE, INC.</td>							
														
									
						</tr>
						<tr class="sectionTitle">
							<td width="13%" >Insured Name:</td>
							<td width="25%" colspan="5">TTEST  TEST</td>
							
						</tr>
     
</table>
	 
	
		<div id="CoverageSection" >	   								
			
	 <table align=center border="0" cellspacing="0" width="100%" cellpadding="0"  class="maintable" >		
      	<table align=center border="0" cellspacing="0" cellpadding="0"  width="100%" class="outerTableBody" >
      		
      	    <tr class="screenTitle">
	      		<td colspan="3" height="20">
	      			<p style="margin-top: 1px; margin-bottom:1px;">&nbsp;Coverage
	      			</p>
	      		</td>      	
	      	</tr>	      	
          	<tr align="center">
          		<td class="textError" align="left" colspan="3">
          			



     	  		</td>
	 		</tr> 		

	      	
	      	<tr> 
	      		<td>      			 
	      			<table width='100%'  border='0' align='left' cellpadding='0' cellspacing='0' style='PADDING-BOTTOM: 3px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; PADDING-TOP: 3px; BACKGROUND-COLOR: #D5DEE8; COLOR: black;' >
	      				<tr >
	      					<td class='text' align='left' width='35%' valign='top' >
	      						<div id="manCoverage" style="height:350">
		      						<table width='100%' class="outerTable" STYLE="PADDING-BOTTOM: 3px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; PADDING-TOP: 3px; BACKGROUND-COLOR: #D5DEE8; COLOR: black;" border='0' align='left' cellpadding='0' cellspacing='0' >
		 								<tr >	
	
		         							<td class='sectionTitle' align='left' colspan='3' >

<b>Deductibles</b></td>         							
		         						</tr>	     						
		         						<tr >
			         						<td align='left' colspan='3' >
			         							<table width='100%'  border='0' align='left' cellpadding='' cellspacing='0' >
			         								<tr>
			         									<td class='fieldLable' style="width:150" align='left' colspan='1'>Windstorm Deductible</td>
					         							<td class='fieldLable' STYLE='width:120;'  align='left' colspan='1' >
					         								<input type="hidden" name="WindDeducd.coverageType" value="">	         								
				         									<select name="WindDeducd.coverageDeductible" size="1" style="width:87" class="text"><option value="">--Select--</option>
				         										<option value="2">2%</option>
<option value="5" selected="selected">5%</option>
<option value="10">10% - 500K+</option></select>
					         							</td>
					         							<td class='fieldLable' align='center' STYLE='width:87;'>&nbsp;
					         							</td>
			         								</tr>
			         							</table>
			         				 <!--SN:Added for 10584  -->
                                          
                                    <!-- EN:Added for 10584 -->		  
			         						</td>		
		         							
		         						</tr>

<!-- start:added by ganpat for 10419 -->

						<script> 
						if(document.forms['CoveragesFormISOHO'].elements['WindDeducd.coverageDeductible'] != null){
							if(document.forms['CoveragesFormISOHO'].elements['WindDeducd.coverageDeductible'].options.length>1){
							document.forms['CoveragesFormISOHO'].elements['WindDeducd.coverageDeductible'].options[0]=null;
							}
						}
						</script>
	
<!-- end:added by ganpat for 10419 -->   
     						 
		         						<tr >
		         							<td class='sectionTitle' align='left' colspan='3'><b>Mandatory Coverages</b></td>
		         						</tr>
		         						<tr>
		         							<td align='left' colspan='3' >
		         								<table width='100%' class="outerTable" STYLE="PADDING-BOTTOM: 3px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; PADDING-TOP: 3px; BACKGROUND-COLOR: #D5DEE8; COLOR: black;" border='0' align='left' cellpadding='' cellspacing='1' >
		         									<tr >		
					         							<td class='sectionTitle' style="width:150" align='left' colspan='1'><b>Coverage</b></td>
														<td class='sectionTitle' align='center' STYLE='width:120;' ><b>Limit</b></td>
														<td class='sectionTitle' align='center' STYLE='width:87;'><b>Deductible</b></td>
					         						</tr>
					         						
					         							
							         						<tr>
							         							<td class='fieldLable' style="width:150" align='left' colspan='1'>
							       									<input type="hidden" name="CoverageHO[0].coverageType" value="ADWL">
							       									<input type="hidden" name="CoverageHO[0].coverageDescription" value="A - Dwelling">
							       									A - Dwelling
							       								</td>
							       								<td class='fieldLable' STYLE='width:120;'  align='left' colspan='1' >
							       									
								       									
								       										 
								       										 	
								       										 		
																					
								       										 		<!-- changed max length of coveraregs limit by arvind -->
								       										 		<input type="text" name="CoverageHO[0].coverageLimit" maxlength="7" value="180000" onkeypress="fnNumericValidation(this);" onchange="setCoverageValues('LIMIT','CoverageHO[0].coverageDeductible','0')" style="width:87;text-align:right;" class="text">
								       										 		
								       										 		&nbsp;&nbsp;<img id="progress0" style="display: none; background-image: url(/IBPOSprod/images/progress.gif); width: 16px; height: 16px;" />					       										 		
								       										 	
								       										 	
								       										 
								       										 
								       										 
								       									
								       									
							       									
							       									
							       								</td>
							       								<td class='fieldLable' align='center' colspan='1' >
							       									
							       										
								       										
								       										
								       											
								       												
																					
								       												<select name="CoverageHO[0].coverageDeductible" onblur="setCoverageValues('DEDUCTIBLE','CoverageHO[4].coverageLimit','0')" style="width:87;" class="text"><option value="">--Select--</option>
								       											 		<option value="500">500</option>
<option value="1000">1000</option>
<option value="1500">1500</option>
<option value="2500" selected="selected">2500</option>
<option value="5000">5000</option>
<option value="7500">7500</option>
<option value="10000">10000</option></select>
								       											 	
								       											
								       											
								       													       										
								       									
							       										
							       									
							       												       												       												       									
							       								</td>
							         						</tr>
							         						
					         						 						
					         						
					         							
							         						<tr>
							         							<td class='fieldLable' style="width:150" align='left' colspan='1'>
							       									<input type="hidden" name="CoverageHO[1].coverageType" value="BOSTR">
							       									<input type="hidden" name="CoverageHO[1].coverageDescription" value="B - Other Structures">
							       									B - Other Structures
							       								</td>
							       								<td class='fieldLable' STYLE='width:120;'  align='left' colspan='1' >
							       									
								       									
								       										 
								       										 	
								       										 	
								       										 		
											 										
											 											<input type="text" name="CoverageHO[1].coverageLimit" maxlength="10" value="18000" onkeypress="fnNumericValidation(this);" disabled="disabled" style="width:87;text-align:right;" class="text">
											 										
								       										 	
								       										 
								       										 
								       										 
								       									
								       									
							       									
							       									
							       								</td>
							       								<td class='fieldLable' align='center' colspan='1' >
							       									
							       										
								       										
								       											
								       											
																					
											 										
											 											<input type="text" name="CoverageHO[1].coverageDeductible" maxlength="10" value="2500" disabled="disabled" style="width:87;text-align:right;" class="text">
											 										
											 										
								       										
								       													       										
								       									
							       										
							       									
							       												       												       												       									
							       								</td>
							         						</tr>
							         						
					         						 						
					         						
					         							
							         						<tr>
							         							<td class='fieldLable' style="width:150" align='left' colspan='1'>
							       									<input type="hidden" name="CoverageHO[2].coverageType" value="CPPR">
							       									<input type="hidden" name="CoverageHO[2].coverageDescription" value="C - Personal Property">
							       									C - Personal Property
							       								</td>
							       								<td class='fieldLable' STYLE='width:120;'  align='left' colspan='1' >
							       									
								       									
								       										 
								       										 	
								       										 	
								       										 		
											 										
											 											<input type="text" name="CoverageHO[2].coverageLimit" maxlength="10" value="90000" onkeypress="fnNumericValidation(this);" disabled="disabled" style="width:87;text-align:right;" class="text">
											 										
								       										 	
								       										 
								       										 
								       										 
								       									
								       									
							       									
							       									
							       								</td>
							       								<td class='fieldLable' align='center' colspan='1' >
							       									
							       										
								       										
								       											
								       											
																					
											 										
											 											<input type="text" name="CoverageHO[2].coverageDeductible" maxlength="10" value="2500" disabled="disabled" style="width:87;text-align:right;" class="text">
											 										
											 										
								       										
								       													       										
								       									
							       										
							       									
							       												       												       												       									
							       								</td>
							         						</tr>
							         						
					         						 						
					         						
					         							
							         						<tr>
							         							<td class='fieldLable' style="width:150" align='left' colspan='1'>
							       									<input type="hidden" name="CoverageHO[3].coverageType" value="DLOU">
							       									<input type="hidden" name="CoverageHO[3].coverageDescription" value="D - Loss of Use">
							       									D - Loss of Use
							       								</td>
							       								<td class='fieldLable' STYLE='width:120;'  align='left' colspan='1' >
							       									
								       									
								       										 
								       										 	
								       										 	
								       										 		
											 										
											 											<input type="text" name="CoverageHO[3].coverageLimit" maxlength="10" value="54000" onkeypress="fnNumericValidation(this);" disabled="disabled" style="width:87;text-align:right;" class="text">
											 										
								       										 	
								       										 
								       										 
								       										 
								       									
								       									
							       									
							       									
							       								</td>
							       								<td class='fieldLable' align='center' colspan='1' >
							       									
							       										
								       										
								       											
								       											
																					
											 										
											 											<input type="text" name="CoverageHO[3].coverageDeductible" maxlength="10" value="2500" disabled="disabled" style="width:87;text-align:right;" class="text">
											 										
											 										
								       										
								       													       										
								       									
							       										
							       									
							       												       												       												       									
							       								</td>
							         						</tr>
							         						
					         						 						
					         						
					         							
							         						<tr>
							         							<td class='fieldLable' style="width:150" align='left' colspan='1'>
							       									<input type="hidden" name="CoverageHO[4].coverageType" value="EPLB">
							       									<input type="hidden" name="CoverageHO[4].coverageDescription" value="E - Personal Liability">
							       									E - Personal Liability
							       								</td>
							       								<td class='fieldLable' STYLE='width:120;'  align='left' colspan='1' >
							       									
								       									
								       										 
								       										 
								       										 	
								       										 	
											 										
											 											<select name="CoverageHO[4].coverageLimit" style="width:87;" class="text"><option value="">--Select--</option>
							       											 				<option value="100000">100000</option>
<option value="300000">300000</option>
<option value="500000" selected="selected">500000</option></select>
												 									
											 																 										
										 										
								       										 
								       										 
								       									
								       									
							       									
							       									
							       								</td>
							       								<td class='fieldLable' align='center' colspan='1' >
							       									
							       									
							       										N/A
							       										<input type="hidden" name="CoverageHO[4].coverageDeductible" value="">
							       												       												       												       									
							       								</td>
							         						</tr>
							         						
					         						 						
					         						
					         							
							         						<tr>
							         							<td class='fieldLable' style="width:150" align='left' colspan='1'>
							       									<input type="hidden" name="CoverageHO[5].coverageType" value="FMDP">
							       									<input type="hidden" name="CoverageHO[5].coverageDescription" value="F - Medical Payments">
							       									F - Medical Payments
							       								</td>
							       								<td class='fieldLable' STYLE='width:120;'  align='left' colspan='1' >
							       									
								       									
								       										 
								       										 
								       										 	
								       										 	
											 										
											 											<select name="CoverageHO[5].coverageLimit" style="width:87;" class="text"><option value="">--Select--</option>
							       											 				<option value="1000" selected="selected">1000</option>
<option value="3000">3000</option>
<option value="5000">5000</option></select>
												 									
											 																 										
										 										
								       										 
								       										 
								       									
								       									
							       									
							       									
							       								</td>
							       								<td class='fieldLable' align='center' colspan='1' >
							       									
							       									
							       										N/A
							       										<input type="hidden" name="CoverageHO[5].coverageDeductible" value="">
							       												       												       												       									
							       								</td>
							         						</tr>
							         						
					         						 						
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
					         												
					         						
		         								</table>
		         							
		         							</td>
		         						</tr>	
		         						
		         						<tr height="5px" class='fieldLable'><td colspan="2">&nbsp;</td></tr>
		         						<tr>
		         																	
		         							<td class='text' align='left' colspan='1' width='40%' >
		         								
      					        				

		         								<input type="button" name="AddCoveragesButton" value="ADDITIONAL COVERAGES" onclick="JavaScript:showAddlCoverages('/IBPOSprod','6');" style="WIDTH:160" class="button">
		         								
		         							</td>
		         						</tr>		         							         						
		      						</table>
	      					  	</div>
	      					</td>

	      					<!-- Extra parameters included for 10511  -->
		      				
<!--   /** This file forms part of the System Task Group International Limited      
* Copyright (c) STG 2006 - 2010.  All  rights reserved *
*
* $Revision: 1507 $
*
* $Header: $
*
* $Log: $ 
* 
*/
-->


















	
									
	<form name="CoveragesFormISOHO" method="post" action="/IBPOSprod/HO/CoverageISOHO.do">
                               <!-- Start:Naveen added hidden parameters for 10511-->
                               <input type="hidden" name="dchkflaghidden" value="">
                               <input type="hidden" name="dchkmessage" value="">
                               <!-- END:Naveen added hidden parameters for 10511-->
                                 <input type="hidden" name="hidCoverageCounter" value="74">
                                 
								
	      						<td class='fieldLable' align='left' width='35%' valign='top'>
								<div id="credit">
	      					
	      						<table width='100%' class="outerTable" STYLE="PADDING-BOTTOM: 3px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; PADDING-TOP: 3px; BACKGROUND-COLOR: #D5DEE8; COLOR: black;" border='0' align='left' cellpadding='' cellspacing='1' >
	      							<tr >
	      								<td class='sectionTitle' align='left' colspan='3' ><b>Credits</b></td>		
	      							</tr>
	      							<tr>
	      								<td colspan="3">
	      									<table border="0" width='100%'>
	      									
	      										<input type="hidden" name="discountsCount" value="9">
	      										
	      										
	      										
	      											<tr>
	      												<td class='fieldLable' align='right' height="15" colspan='1'>
		      												
		      													      												
       												
	      												</td>
					         							<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;
				  									  		
												 	  			Central Station Burglar Alarm
												 	  			<input type="hidden" name="DiscountsHO[0].discountCode" value="CSB">								 	  		
												  				
												  		</td>
												  		<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;								  	
															<select name="DiscountsHO[0].discountType" onblur="creditValidation()" style="width:87;" class="text"><option value="" selected="selected">--Select--</option>
													  			<option value="Y">Yes</option></select>
													  	</td>
					         						</tr>
	      										
	      										
	      											<tr>
	      												<td class='fieldLable' align='right' height="15" colspan='1'>
		      												
		      													      												
       												
	      												</td>
					         							<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;
				  									  		
												 	  			Central Station Fire Alarm
												 	  			<input type="hidden" name="DiscountsHO[1].discountCode" value="CSF">								 	  		
												  				
												  		</td>
												  		<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;								  	
															<select name="DiscountsHO[1].discountType" onblur="creditValidation()" style="width:87;" class="text"><option value="" selected="selected">--Select--</option>
													  			<option value="Y">Yes</option></select>
													  	</td>
					         						</tr>
	      										
	      										
	      											<tr>
	      												<td class='fieldLable' align='right' height="15" colspan='1'>
		      												
		      													      												
       												
	      												</td>
					         							<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;
				  									  		
												 	  			Police Station Burglar Alarm
												 	  			<input type="hidden" name="DiscountsHO[2].discountCode" value="PSB">								 	  		
												  				
												  		</td>
												  		<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;								  	
															<select name="DiscountsHO[2].discountType" onblur="creditValidation()" style="width:87;" class="text"><option value="" selected="selected">--Select--</option>
													  			<option value="Y">Yes</option></select>
													  	</td>
					         						</tr>
	      										
	      										
	      											<tr>
	      												<td class='fieldLable' align='right' height="15" colspan='1'>
		      												
		      													      												
       												
	      												</td>
					         							<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;
				  									  		
												 	  			Fire Department Fire Alarm
												 	  			<input type="hidden" name="DiscountsHO[3].discountCode" value="FDF">								 	  		
												  				
												  		</td>
												  		<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;								  	
															<select name="DiscountsHO[3].discountType" onblur="creditValidation()" style="width:87;" class="text"><option value="" selected="selected">--Select--</option>
													  			<option value="Y">Yes</option></select>
													  	</td>
					         						</tr>
	      										
	      										
	      											<tr>
	      												<td class='fieldLable' align='right' height="15" colspan='1'>
		      												
		      													      												
       												
	      												</td>
					         							<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;
				  									  		
												 	  			Local Burglar and/or Fire Alarm
												 	  			<input type="hidden" name="DiscountsHO[4].discountCode" value="LBF">								 	  		
												  				
												  		</td>
												  		<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;								  	
															<select name="DiscountsHO[4].discountType" onblur="creditValidation()" style="width:87;" class="text"><option value="">--Select--</option>
													  			<option value="Y" selected="selected">Yes</option></select>
													  	</td>
					         						</tr>
	      										
	      										
	      											<tr>
	      												<td class='fieldLable' align='right' height="15" colspan='1'>
		      												
		      													
		      													 <a href onclick="MM_openBrWindow('/IBPOSprod/helpInfo.do?infoType=CREDITS_ASF','CreditsInfo','scrollbars=no,resizable=no,width=300,height=40,left=700,top=100,status=yes')">	      													 	
								 									  <img style="cursor:pointer" id="id_symbol_ASF" src="/IBPOSprod/images/i-new.gif" width="21" border="0"/>							 									
		      													 </a>	      													
		      												
		      													      												
       												
	      												</td>
					         							<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;
				  									  		
												 	  			Automatic Sprinklers - All Areas 
												 	  			<input type="hidden" name="DiscountsHO[5].discountCode" value="ASF">								 	  		
												  				
												  		</td>
												  		<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;								  	
															<select name="DiscountsHO[5].discountType" onblur="creditValidation()" style="width:87;" class="text"><option value="" selected="selected">--Select--</option>
													  			<option value="Y">Yes</option></select>
													  	</td>
					         						</tr>
	      										
	      										
	      											<tr>
	      												<td class='fieldLable' align='right' height="15" colspan='1'>
		      												
		      												
		      													
		      													<a href onclick="MM_openBrWindow('/IBPOSprod/helpInfo.do?infoType=CREDITS_ASP','CreditsInfo','scrollbars=no,resizable=no,width=300,height=40,left=700,top=100,status=yes')">	      													 	
								 									  <img style="cursor:pointer" id="id_symbol_ASP" src="/IBPOSprod/images/i-new.gif" width="21" border="0"/>							 									
		      													 </a>
		      													      												
       												
	      												</td>
					         							<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;
				  									  		
												 	  			Automatic Sprinklers - Partial 
												 	  			<input type="hidden" name="DiscountsHO[6].discountCode" value="ASP">								 	  		
												  				
												  		</td>
												  		<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;								  	
															<select name="DiscountsHO[6].discountType" onblur="creditValidation()" style="width:87;" class="text"><option value="" selected="selected">--Select--</option>
													  			<option value="Y">Yes</option></select>
													  	</td>
					         						</tr>
	      										
	      										
	      											<tr>
	      												<td class='fieldLable' align='right' height="15" colspan='1'>
		      												
		      													      												
       												
	      												</td>
					         							<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;
				  									  		
												 	  			Storm Shutters
												 	  			<input type="hidden" name="DiscountsHO[7].discountCode" value="SST">								 	  		
												  				
												  		</td>
												  		<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;								  	
															<select name="DiscountsHO[7].discountType" onblur="creditValidation()" style="width:87;" class="text"><option value="" selected="selected">--Select--</option>
													  			<option value="Y">Yes</option></select>
													  	</td>
					         						</tr>
	      										
	      										
	      											<tr>
	      												<td class='fieldLable' align='right' height="15" colspan='1'>
		      												
		      													      												
       												
	      												</td>
					         							<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;
				  									  		
												 	  			Hurricane Resistant Laminated Glass
												 	  			<input type="hidden" name="DiscountsHO[8].discountCode" value="HRL">								 	  		
												  				
												  		</td>
												  		<td class='fieldLable' align='left' height="15" colspan='1'>&nbsp;&nbsp;								  	
															<select name="DiscountsHO[8].discountType" onblur="creditValidation()" style="width:87;" class="text"><option value="" selected="selected">--Select--</option>
													  			<option value="Y">Yes</option></select>
													  	</td>
					         						</tr>
	      										
	      									</table>	      									
	      								</td>
	      							</tr>
	      							
									
	      								        						
	        						<tr>
	         		 					<td class='sectionTitle' align='left' colspan='3' ><b>Worksheet Details</b></td>
	        						</tr>
	        						<tr>		
	         							<td class='sectionTitle' width="40%" align="center" ><b>Worksheet</b></td>
	         							<td class='sectionTitle' width="40%" align="center"><b>Premium</b></td>
	         							<td class='sectionTitle' width="20%" align="center"></td>	         										
	         						</tr>
	         						<tr>
	         							<td width="47%" class = "text" align = "center" colspan="12">
	         								<div align=center style="position:relative;width:100%;height:75;overflow:auto">
	         									<table border = "0" cellspacing = "1" cellpadding = "1" width="100%" align="center" >
	         																										
														            
										        			
												  				
												  					
												  				
												  						
															
														
														
															
														  		
														  			
																
														  					
																
													 	
													 	
															
														  		
														  			
																
														  					
															
													 	
													 	            
																
																	 
																		
														     	
													 	
														
															
																
																
																	
																
																	
													
																
																
																<tr>
											      					<td width="40%" class='fieldLable' align='center'  ><B>
																		<a href="JAVASCRIPT:callWorksheet('201411002076','         $683.00','260882','1','/IBPOSprod')"  ><B>201411002076</B></a>															
																	</b></td>
																	<td width="40%" class='fieldLable' align='center'  ><B>         $683.00
																	</b></td>
																	<td width="20%" class='fieldLable' align='center'  >
																	 
																	     
																	 
																	<br></td>
																</tr>					
											 			
											 		
	         									</table>
	         								</div>
	         							</td>
	         						</tr>
	         								        							
	         					</table>
	      					</td>
	      				</tr>						
	      			</table>
	      		</td>      				      			
	      	</tr>
	      	<input type="hidden" name="WORKSHEETNO" value="">
	      	<input type="hidden" name="POLICYPREMIUM" value="">
	      	<input type="hidden" name="QUOTENO" value="">
	      	
	      	<input type="hidden" name="QUOTENUMBER" value="260882">
	      	
	      	<input type="hidden" name="RENEWNO" value="">
	      	 <input type="hidden" name="hidPaymentPlan" value=""/>
	      	 													
																			<input type="hidden" name="strUserRole" value="EP">		
																			<input type="hidden" name="strUserId" value="ISLIPLI2">	
																			<input type="hidden" name="strQuoteNo" value="260882">
																			<input type="hidden" name="strQuoteRenewNo" value="1">
																			<input type="hidden" name="strSubProgramId" value="NYISO">
<input type="hidden" name="errorCrMsgCount" value="1"><!-- added by ganpat for 10585-->
             
			<input type="hidden" name="hidPrintForm" value="https://interboroonline.com:4445/reports/rwservlet?pos_ib_prd_ho&server=rep_ib-prodappsol01_FRHome1&report=/export/home/ibprod/POS_IB_REPORTS/iso_quote_worksheet_renpos.rdf"/>
	      	 	

			<tr id="hidebutton" >
	      	
	        	<td class='fieldLable' align='center' colspan='4' STYLE='BORDER-TOP: #809fff 1px solid; BORDER-LEFT: #809fff 1px solid; BORDER-BOTTOM: #809fff 1px solid; BORDER-RIGHT: #809fff 1px solid;'>
	        		
	        		
      				<input type="button" name="Dwelling" value="DWELLING" onclick="callResidence('/IBPOSprod','0','OTPR');" style="WIDTH:80" class="button">
      				
      				<input type="button" name="CoveragesSubmit" value="QUOTE" onclick="JavaScript:getAllCoverages('/IBPOSprod','0','OTPR');" style="WIDTH:80" class="button">	        				
      			</td>
			</tr>		
			
	    </table>	
	   </table>
	   
	   <br>
	    <div id='WORKSHEET'>
	    	
	    </div>
<div id="adverseActNotf" style="FONT-FAMILY: VERDANA;FONT-SIZE: 11px;position:absolute;top:80px;left:105px; margin-right:2px; width:795px;visibility:hidden; OVERFLOW-X: hidden;OVERFLOW-Y: hidden;" class="outerTableThickBorder">

<center><b>ADVERSE ACTION NOTIFICATION</b></center>
<BR>
&nbsp;As required by state law and the Fair Credit Reporting Act, we are advising you that the rate we assigned your Homeowners  <br>
&nbsp;insurance policy is not our lowest rate. We use Insurance bureau scoring based on consumer credit reports, along with<br>
&nbsp;other factors such as driving record, prior loss history and prior insurance history, in determining the most appropriate rates<br>
&nbsp;to apply. Based on these factors we have issued your policy at the lowest rate we have available to you.

<br>
<br>

&nbsp;The information contained in your consumer credit report was obtained  either wholly or in part from LexisNexis. As provided<br>
&nbsp; in the Fair Credit Reporting Act ,you have the right to receive and inspect a copy of this report by contacting LexisNexis<br>
&nbsp; directly by phone at: 1-800-456-6004,online at www.consumerdisclosure.com or in writing at:<br>
<br>

<center>
LexisNexis<br>
P.O. Box 105108<br>
Atlanta, GA 30348.<br>
</center>
<br>
&nbsp;LexisNexis did not make any premium or rating decisions regarding your policy, and they are unable to explain your policy<br>
&nbsp; premium. You may contact us for that information. You have a right to obtain a free disclosure of the credit information if<br>
 &nbsp;you contact LexisNexis within 60 days of receiving this notice. You may dispute the accuracy or completeness of any<br>
 &nbsp;information in your credit report directly with LexisNexis.<br>
<br>
&nbsp;If you have any questions, please contact our Customer Service Department at 1-866-234-5544.<br><br>
<center>
<B>CREDIT DISCLOSURE NOTIFICATION</B><br>
</center>
<br>
&nbsp;Please print the Credit Disclosure Notification and present it to the insured at the time of binding.<br><br>


<br>


<br>
<br>
&nbsp;<input type="checkbox" name="notfYes"><B>Yes,the notifications have been read and understood by the insured?</B><br><br>

<center>
							 			<input type="button" name="btnNotfSubmt" value="Submit" onclick="notfSubmit()" style="WIDTH:120" class="button">
										<input type="button" name="btnNotfCancel" value="Cancel" onclick="notfCancel()" style="WIDTH:120" class="button">									 		
</center>

<br>
<br>
</div>
	    </form>	

		   					
	     		             
    </form>
  	<script language = 'JAVASCRIPT'>
  		creditValidation();
  	</script>
  </body>
</html>
       															</td>
  </tr>
  <tr>
    <td valign="top"></td>
  </tr>
  <tr>
  <td id="hidethis"></td>
  </tr>
</table>

</body>

</HTML>

