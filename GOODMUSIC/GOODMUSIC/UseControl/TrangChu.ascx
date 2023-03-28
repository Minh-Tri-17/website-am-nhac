<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.ascx.cs" Inherits="GOODMUSIC.Use_control.WebUserControl1" %>
<!--nav-->
<nav>
    <div class="slideshow-container">
        <div class="slides">
            <div class="numbertext">1/5</div>
            <img class="images" src="/images/background1.jpg" style="width: 100%" />
        </div>
        <div class="slides">
            <div class="numbertext">2/5</div>
            <img class="images" src="/images/background2.jpg" style="width: 100%" />
        </div>
        <div class="slides">
            <div class="numbertext">3/5</div>
            <img class="images" src="/images/background3.jpg" style="width: 100%" />
        </div>
        <div class="slides">
            <div class="numbertext">4/5</div>
            <img class="images" src="/images/background4.jpg" style="width: 100%" />
        </div>
        <div class="slides">
            <div class="numbertext">5/5</div>
            <img class="images" src="/images/background5.jpg" style="width: 100%" />
        </div>
    </div>
    <!--dấu chấm slide-->
    <div style="text-align: center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>
</nav>
<!--article-->
<article>
    <!--Tiêu đề trang chủ-->
    <section>
        <a href="/Use/NhacMoi.aspx">
            <h3>Bài hát</h3>
        </a>
        <div class="scroll">
            <%for (int i = 0; i < listBH.Count(); i++)
                { %>
            <div>
                <div>
                    <img class="imagesBH" src='<%="\\imagesBH_MV\\imagesBH\\"+listBH[i].ANH %>' />
                    <p class="info"><%=listBH[i].TENBH +" _ " +listBH[i].CASI %></p>
                </div>
                <audio controls style="width: 500px; height: 40px">
                    <source src='<%="\\LinkMP3\\NhacTre\\" + listBH[i].LINK %>' /></audio>
            </div>
        <%} %>
        </div>
    </section>
    <section>
        <a href="/Use/ShowMv.aspx">
            <h3>Mv</h3>
        </a>
    </section>
    <section>
        <a href="/Use/Top20.aspx">
            <h3>Top 20</h3>
        </a>
        <img class="images-T-left" src="/images/Top20-NhacTre.jpg" alt="Top 20 nhạc trẻ" />
        <img class="images-TTC" src="/images/Top20-RapViet.jpg" alt="Top 20 nhạc rap" />
        <img class="images-TTC" src="/images/Top20-EDM.jpg" alt="Top 20 nhạc EDM" />
        <img class="images-TTC-right" src="/images/Top20-AuMy.jpg" alt="Top 20 nhạc US-UK" />
    </section>
    <section>
        <a href="/Use/ChuDe.aspx">
            <h3>Chủ đề</h3>
        </a>
        <%for (int i = 0; i < listCD.Count(); i++)
            { %>
        <img class="images-CD-left" src='<%="\\images\\" + listCD[i].HINHCD %>' alt="Chủ đề nhạc buồn" />
        <%} %>
    </section>
</article>
