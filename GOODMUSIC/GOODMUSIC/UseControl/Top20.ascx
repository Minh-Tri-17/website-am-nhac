<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Top20.ascx.cs" Inherits="GOODMUSIC.Use_control.Top20" %>
<!--nav-->
<nav>
    <img class="img" src="/images/background2.jpg" alt="background" width="970" height="250" />
</nav>
<!--article-->
<article>
    <h2>Top 20</h2>
    <img class="images-T" src="../images/Top20-NhacTre.jpg" alt="Top 20 nhạc trẻ" /><input type="button" id="btn9" value="Ẩn" /><input type="button" id="btn10" value="Hiển Thị" />
    <br />
    <div id="scroll-T">
        <% for (int i = 0; i < listBH.Count(); i++)
            {%>
        <div>
            <p class="info"><%=listBH[i].CASI+" _ "+listBH[i].TENBH %></p>
            <audio controls style="width: 600px; height: 40px">
                <source src='<%="\\LinkMP3\\NhacTre\\" + listBH[i].LINK %>' /></audio>
        </div>
        <%} %>
    </div>
    <img class="images-T" src="../images/Top20-RapViet.jpg" alt="Top 20 nhạc rap" /><input type="button" id="btn11" value="Ẩn" /><input type="button" id="btn12" value="Hiển Thị" /><br />
    <div id="scroll-T1">
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
    </div>
    <img class="images-T" src="../images/Top20-EDM.jpg" alt="Top 20 nhạc EDM" /><input type="button" id="btn13" value="Ẩn" /><input type="button" id="btn14" value="Hiển Thị" /><br />
    <div id="scroll-T2">
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
    </div>
    <img class="images-T" src="../images/Top20-AuMy.jpg" alt="Top 20 nhạc US-UK" /><input type="button" id="btn15" value="Ẩn" /><input type="button" id="btn16" value="Hiển Thị" />
    <div id="scroll-T3">
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
        <div>
            <p class="info">Tên Nhạc: - Ca sĩ:</p>
            <audio controls style="width: 400px; height: 40px">
                <source /></audio>
        </div>
    </div>
</article>
<script language="javascript">
    /* js top20*/
    document.getElementById("btn9").onclick = function () {
        document.getElementById("scroll-T").style.display = 'none';
    };

    document.getElementById("btn10").onclick = function () {
        document.getElementById("scroll-T").style.display = 'block';
    };
    document.getElementById("btn11").onclick = function () {
        document.getElementById("scroll-T1").style.display = 'none';
    };

    document.getElementById("btn12").onclick = function () {
        document.getElementById("scroll-T1").style.display = 'block';
    };
    document.getElementById("btn13").onclick = function () {
        document.getElementById("scroll-T2").style.display = 'none';
    };

    document.getElementById("btn14").onclick = function () {
        document.getElementById("scroll-T2").style.display = 'block';
    };
    document.getElementById("btn15").onclick = function () {
        document.getElementById("scroll-T3").style.display = 'none';
    };

    document.getElementById("btn16").onclick = function () {
        document.getElementById("scroll-T3").style.display = 'block';
    };
</script>
