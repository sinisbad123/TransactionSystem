﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="ISPROG3_Final.WebForm9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">   
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
    <script src="js/cufon-yui.js" type="text/javascript"></script>
    <script src="js/cufon-replace.js" type="text/javascript"></script>
    <script src="js/NewsGoth_400.font.js" type="text/javascript"></script>
	<script src="js/NewsGoth_700.font.js" type="text/javascript"></script>
    <script src="js/NewsGoth_Lt_BT_italic_400.font.js" type="text/javascript"></script>
    <script src="js/Vegur_400.font.js" type="text/javascript"></script> 
    <script src="js/FF-cash.js" type="text/javascript"></script>
    <script src="js/jquery.featureCarousel.js" type="text/javascript"></script>     
    <script type="text/javascript">
        $(document).ready(function () {
            $("#carousel").featureCarousel({
                autoPlay: 7000,
                trackerIndividual: false,
                trackerSummation: false,
                topPadding: 50,
                smallFeatureWidth: .9,
                smallFeatureHeight: .9,
                sidePadding: 0,
                smallFeatureOffset: 0
            });
        });
    </script>
    <script type="text/javascript">
        tday = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
        tmonth = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");

        function GetClock() {
            d = new Date();
            nday = d.getDay();
            nmonth = d.getMonth();
            ndate = d.getDate();
            nyear = d.getYear();
            nhour = d.getHours();
            nmin = d.getMinutes();
            nsec = d.getSeconds();

            if (nyear < 1000) nyear = nyear + 1900;

            if (nhour == 0) { ap = " AM"; nhour = 12; }
            else if (nhour <= 11) { ap = " AM"; }
            else if (nhour == 12) { ap = " PM"; }
            else if (nhour >= 13) { ap = " PM"; nhour -= 12; }

            if (nmin <= 9) { nmin = "0" + nmin; }
            if (nsec <= 9) { nsec = "0" + nsec; }


            document.getElementById('clockbox').innerHTML = "" + tday[nday] + ", " + tmonth[nmonth] + " " + ndate + ", " + nyear + " " + nhour + ":" + nmin + ":" + nsec + ap + "";
            setTimeout("GetClock()", 1000);
        }
        window.onload = GetClock;
    </script>
	<style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 210px;
        }
        .style3
        {
            width: 210px;
            text-align: center;
        }
    </style>
    <form id="form1" runat="server">
</head>
<body id="page1">
	<div class="extra">
    	<!--==============================header=================================-->
        <header>
        	<div class="row-top">
            	<div class="main">
                	<div class="wrapper">
                    	<h1><a href="index.html"></a></h1>
                    </div>
                </div>
            </div>
            <div class="menu-row">
            	<div class="menu-bg">
                    <div class="main">
                        <nav class="indent-left">
                            <ul class="menu wrapper">
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="row-bot">
            	<div class="center-shadow">
                	<div class="carousel-container">
                      <div id="carousel">
                       
        <!--==============================content================================-->
            <br />
                    <center>
                        <div id="clockbox">
                        </div>
                    </center>
                    <br />
            <div class="main">
                <div class="container_12">
                    <div class="wrapper">
                        <article class="grid_8">
                                <br />
                                </article>
                            </div>
                    <table style="width:100%;">
                        <tr>
                            <td class="style1" colspan="3">
                                Are you sure you want to deactivate your account? Please click deactivate below to continue otherwise <A HREF="javascript:history.back()">go back</A>
                                </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="aligncenter">
                                &nbsp;</td>
                            <td class="style3">
                                <asp:Button ID="Button1" runat="server" ForeColor="Red" onclick="Button1_Click" 
                                    Text="Deactivate Account" Width="268px" />
                            </td>
                            <td class="aligncenter">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    </div>
                </div>
            </div>
            <div class="block"></div>
        </section>
    </div>
                        </div>
                      </div>
    				</div>
                </div>
            </div>
        </header>
        
	<script type="text/javascript">	    Cufon.now(); </script>
    </form>
</body>
</html>
