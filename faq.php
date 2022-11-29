

<section id="contact" class="contact">
    <div class="container aos-init aos-animate" data-aos="fade-up">

        <div class="section-title">
            <h2>FACING ANY ISSUES, OR HAVE ANY QUESTIONS?</h2>
            <p>GET IN TOUCH WITH US THROUGH THIS FORMS</p>
        </div>

        <div class="row mt-5">

            <div class="col-lg-4">
                <div class="info">
                    <div class="signup">
                        <i class="bi bi-geo-alt"></i>
                        <h4>New Here:</h4>
                        <a href="register.php">
                            <p>Signup Here</p>
                        </a>
                    </div>

                    <div class="email">
                        <i class="bi bi-envelope"></i>
                        <h4>Email:</h4>
                        <a href="mailto:support@communitycafe.in">
                            <p>email</p>
                        </a>
                    </div>

                    <div class="phone">
                        <i class="bi bi-phone"></i>
                        <h4>Call:</h4>
                        <p>+91 </p>
                    </div>

                </div>

            </div>

            <div class="col-lg-8 mt-5 mt-lg-0">

                <form onsubmit="submitted()" role="form" class="php-email-form">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required="">
                        </div>
                        <div class="col-md-6 form-group mt-3 mt-md-0">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required="">
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required="">
                    </div>
                    <div class="form-group mt-3">
                        <textarea class="form-control" name="message" rows="5" placeholder="Message" required=""></textarea>
                    </div>
                    <div class="my-3">
                        <div class="loading">Loading</div>
                        <div class="sent-message">Your message has been sent. Thank you!</div>
                    </div>
                    <div class="text-center"><button type="submit">Send Message</button></div>
                </form>

            </div>

        </div>

    </div>

    <script>
        function submitted() {
            alert("Thank You for your Feedback!!");
            $('.php-email-form')[0].reset();
        }
    </script>
</section>