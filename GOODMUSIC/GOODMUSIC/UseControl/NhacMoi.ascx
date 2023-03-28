<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NhacMoi.ascx.cs" Inherits="GOODMUSIC.Use_control.NhacMoi" %>
<!--nav-->
<nav>
    <img class="img" src="/images/background3.jpg" alt="background" width="970" height="250" />
</nav>
<!--article-->
<article>
    <h2>Bài hát</h2>
    <div id="border-list-nhac">
        <% for (int i = 0; i < listBH.Count(); i++)
            { %>

        <div class="border-list-nhac">
            <div>
                <img class="imagesBH" src='<%="\\imagesBH_MV\\imagesBH\\"+listBH[i].ANH %>' />
                <p class="info"><%=listBH[i].TENBH +" _ " +listBH[i].CASI %></p>
            </div>
            <audio controls style="width: 600px; height: 40px">
                <source src='<%="\\LinkMP3\\NhacTre\\" + listBH[i].LINK %>' />
                <source src='<%="\\LinkMP3\\NhacRap\\" + listBH[i].LINK %>' />
                <source src='<%="\\LinkMP3\\NhacEDM\\" + listBH[i].LINK %>' />
                <source src='<%="\\LinkMP3\\NhacNgoai\\" + listBH[i].LINK %>' />
            </audio>
        </div>
        <%} %>
    </div>
</article>
