<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ page_title }}</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive HTML5 Resume/CV Template for Developers">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,400italic,300italic,300,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- FontAwesome JS-->
	<script defer src="assets/fontawesome/js/all.min.js"></script>
    <!-- Global CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <div class="wrapper mt-lg-5">
        <div class="sidebar-wrapper">
            <div class="profile-container">
                <img class="profile" src="assets/images/profile.png" alt="" />
                <h1 class="name">{{ name }}</h1>
                <h3 class="tagline">Site Reliability Engineer</h3>
            </div><!--//profile-container-->

            <div class="contact-container container-block">
                <ul class="list-unstyled contact-list">
                    <li class="email"><i class="fas fa-envelope"></i><a href="mailto:{{ email }}">{{ email }}</a></li>
                    <li class="linkedin"><i class="fab fa-linkedin-in"></i><a href="https://{{ linkedin.url }}" target="_blank">{{ linkedin.name }}</a></li>
                    <li class="github"><i class="fab fa-github"></i><a href="https://{{ github }}" target="_blank">{{ github }}</a></li>
                </ul>
            </div><!--//contact-container-->
            <div class="education-container container-block">
                <h2 class="container-block-title">Education</h2>
{% for school in education %}
                <div class="item">
                    <h4 class="meta">{{ school.school }}</h4>
                    <h5 class="degree">{{ school.degree }}</h5>
	                    <div class="time">{{ school.start_date }} - {{ school.end_date }}</div>
                </div><!--//item-->
{% endfor %}
            </div><!--//education-container-->

            <div class="languages-container container-block">
                <h2 class="container-block-title">Languages</h2>
                <ul class="list-unstyled interests-list">
                    <li>French <span class="lang-desc">(Native)</span></li>
                    <li>English <span class="lang-desc">(Fluent)</span></li>
                    <li>Spanish <span class="lang-desc">(Basic)</span></li>
                </ul>
            </div><!--//interests-->

            <div class="interests-container container-block">
                <h2 class="container-block-title">Interests</h2>
                <ul class="list-unstyled interests-list">
{% for activity in activities %}
                    <li>{{ activity }}</li>
{% endfor %}
                </ul>
            </div><!--//interests-->

        </div><!--//sidebar-wrapper-->

        <div class="main-wrapper">

            <section class="section summary-section">
                <h2 class="section-title"><span class="icon-holder"><i class="fas fa-user"></i></span>Career Profile</h2>
                <div class="summary">
                    <p>{{ description }}</p>
                </div><!--//summary-->
            </section><!--//section-->

            <section class="section experiences-section">
                <h2 class="section-title"><span class="icon-holder"><i class="fas fa-briefcase"></i></span>Experiences</h2>
{% for job in experience %}
                <div class="item">
                    <div class="meta">
                        <div class="upper-row">
                            <h3 class="company">{{ job.who }}, {{ job.where }}</h3>
                            <div class="time">{{ job.start_date  }} - {{ job.end_date }}</div>
                        </div><!--//upper-row-->
                        <div class="job-title">{{ job.what }}</div>
                        <div class="job-skills">{{ job.skills | join(', ') }}</div>
                    </div><!--//meta-->
                    <div class="details">
                        <ul>
{% for duty in job.duties %}
                            <li>
                                {{ duty }}
                            </li>
{% endfor %}
                        </ul>
                    </div><!--//details-->
                </div><!--//item-->
{% endfor %}

            </section><!--//section-->

            <section class="skills-section section">
                <h2 class="section-title"><span class="icon-holder"><i class="fas fa-rocket"></i></span>Skills &amp; Proficiency</h2>
                <div class="skillset">
{% for level, items in skills.items() %}
                    <div class="item">
                        <div class="meta">
                            <div class="upper-row">
                                <h3 class="skill-level">{{ level }}</h3>
                            </div><!--//upper-row-->
                            <div class="skill-list">
                                {{ items | join(' | ') }}
                            </div>
                        </div><!--//meta-->
                    </div><!--//item-->
{% endfor %}
                </div>
            </section><!--//skills-section-->

        </div><!--//main-body-->
    </div>

    <footer class="footer">
        <div class="text-center">
            <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
            <small class="copyright">Designed with <i class="fas fa-heart"></i> by <a href="http://themes.3rdwavemedia.com" target="_blank">Xiaoying Riley</a> for developers</small>
        </div><!--//container-->
    </footer><!--//footer-->

</body>
</html>

