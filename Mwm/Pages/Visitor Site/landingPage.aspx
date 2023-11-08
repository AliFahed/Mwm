<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Visitor Site/visitorPageTemplate.Master" AutoEventWireup="true" CodeBehind="landingPage.aspx.cs" Inherits="Mwm.Pages.Visitor_Site.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/landingPageTemplate.css" rel="stylesheet" />
    <link href="styles/landingPage.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Home Hero Section -->
    <section class="home-hero-section">
        <h2>Burgieeeeer</h2>
        <p>Order now!</p>
        <div class="btns">
            <a href="#about" class="learn-more-btn">See the menu</a>
            <a href="#ourCourses" class="visit-courses-btn">Order Now</a>
        </div>
    </section>

    <!-- About Us Section 
    <section id="about" class="about-us-section">
        <h2 class="title">Welcome to </h2>
        <p class="desc">
            
        </p>
        <div class="courses-desc">
            <img src="../../images/courses-icon.png" alt="courses icon" class="courses-icon" />
            <div class="courses-info">
                <h3>2+ courses</h3>
                <p>You can start and complete one of our courses in under our site</p>
            </div>
        </div>
    </section>-->

    <!-- Courses Section -->
    <!--<section id="ourCourses" class="courses-section">
        <h2>Our Courses</h2>
        <p>Learn the skills of the future for FREE!</p>

        <div class="courses-container">
            <div class="courses">
                <img src="../../images/diggity-marketing-SB0WARG16HI-unsplash.jpg" alt="course image" class="course-image" />
                <div class="details">
                    <span class="course-name">Digital Marketing</span>
                    <p class="course-desc">Learn digital marketing to help your business or career. Advertising and selling products through the internet, mobile devices, social media, search engines, display advertising, and more.</p>
                </div>
            </div>

            <div class="courses">
                <img src="../../images/matthew-osborn-wMRIcT86SWU-unsplash.jpg" alt="course image" class="course-image" />
                <div class="details">
                    <span class="course-name">Public Speaking</span>
                    <p class="course-desc">Gain more self-assurance when speaking in front of an audience and discover how to quickly and efficiently modify your presentations for different audiences.</p>
                </div>
            </div>

            <div class="courses">
                <img src="../../images/carl-heyerdahl-KE0nC8-58MQ-unsplash.jpg" alt="course image" class="course-image" />
                <div class="details">
                    <span class="course-name">How to increase productivity at work</span>
                    <p class="course-desc">Become better at managing your time, and learn how delegation and prioritisation can help you work more efficiently.</p>
                </div>
            </div>

            <div class="courses">
                <img src="../../images/huma-kabakci-oRk4Ep65tRc-unsplash.jpg" alt="course image" class="course-image" />
                <div class="details">
                    <span class="course-name">Coming Soon</span>
                    <p class="course-desc">More courses are coming soon!</p>
                </div>
            </div>
        </div>
    </section>-->

    <!-- Contact Us Section 
    <section id="contact" class="contact-us-section">
        <h2 class="title">Want to Reach us!</h2>
        
        <div class="contact-wrapper">
            <div class="info-container">
                <p>Email:</p>
                <p>classroom@gmail.com</p>
            </div>

            <div class="info-container phone">
                <p>Phone:</p>
                <p>123456789</p>
            </div>

            <img src="../../images/apu-map-view.PNG"" alt="map direction image" class="map" />
        </div>
    </section>-->
</asp:Content>
