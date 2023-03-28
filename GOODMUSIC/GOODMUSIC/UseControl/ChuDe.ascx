<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChuDe.ascx.cs" Inherits="GOODMUSIC.Use_control.ChuDe" %>
<!--nav-->
<nav>
    <img class="img" src="/images/background4.jpg" alt="background" width="970" height="250" />
</nav>
<!--article-->
<article>
    <h2>Chủ Đề</h2>
    <%for (int i = 0; i < listCD.Count(); i++)
        {
    %>
    <img class="images-CD-left" src='<%="\\images\\" + listCD[i].HINHCD%>' alt='<% = listCD[i].TENCD %>' />
    <input type="button" id="btn1" value="Ẩn" /><input type="button" id="btn2" value="Hiển Thị" />
    <div id="scroll-CD">  
         <% for (int j = 0; j < listBH.Count(); j++)
            {%>
        <div>
            <p class="info"><%=listBH[j].THUTU + " :"+listBH[j].CASI + " _ " + listBH[j].TENBH%></p>
            <audio controls style="width: 600px; height: 40px">
                <source src='<%="\\LinkMP3\\NhacTre\\" + listBH[j].LINK %>' /></audio>
        </div>
        <%} %>
     </div>  
  <%} %>        
</article>

<script language="javascript">
    /* js chủ đề*/
    document.getElementById("btn1").onclick = function () {
        document.getElementById("scroll-CD").style.display = 'none';
    };

    document.getElementById("btn2").onclick = function () {
        document.getElementById("scroll-CD").style.display = 'block';
    };
    document.getElementById("btn3").onclick = function () {
        document.getElementById("scroll-CD1").style.display = 'none';
    };

    document.getElementById("btn4").onclick = function () {
        document.getElementById("scroll-CD1").style.display = 'block';
    };
    document.getElementById("btn5").onclick = function () {
        document.getElementById("scroll-CD2").style.display = 'none';
    };

    document.getElementById("btn6").onclick = function () {
        document.getElementById("scroll-CD2").style.display = 'block';
    };
    document.getElementById("btn7").onclick = function () {
        document.getElementById("scroll-CD3").style.display = 'none';
    };

    document.getElementById("btn8").onclick = function () {
        document.getElementById("scroll-CD3").style.display = 'block';
    };

</script>
