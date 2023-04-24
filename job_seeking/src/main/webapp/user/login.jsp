<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/7/2023
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng Nhập</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://static.licdn.com/aero-v1/sc/h/atbn2o0wa7dkf1r28i6huscbz">

</head>
<body dir="ltr">
<form class="" action="#" method="post">
    <input name="loginCsrfParam" value="83bf5670-0956-4983-8fae-6c6374c32a23" type="hidden">

    <input name="session_redirect" value="https://www.linkedin.com/jobs" type="hidden">

    <input name="trk" value="homepage-jobseeker_google-one-tap-submit" type="hidden">
    <div id="google-one-tap__container" data-tracking-csontrol-name="homepage-jobseeker_google-one-tap"></div>

    <div class="loader loader--full-screen">
        <div class="loader__container mb-2 overflow-hidden">
            <icon class="loader__icon inline-block loader__icon--default text-color-progress-loading"
                  data-delayed-url="https://static.licdn.com/aero-v1/sc/h/ddi43qwelxeqjxdd45pe3fvs1"
                  data-svg-class-name="loader__icon-svg--large fill-currentColor h-[60px] min-h-[60px] w-[60px] min-w-[60px]"></icon>
        </div>
    </div>

</form>

<script data-delayed-url="https://static.licdn.com/aero-v1/sc/h/8m736dfzskmdn6bwwqz67iiki"
        data-module-id="google-gsi-lib"></script>
<code id="enableGoogleAutoSelect" style="display: none"><!--true--></code>
<code id="isLinkedInAppWebView" style="display: none"><!--false--></code>

<nav class="nav pt-1.5 pb-2 flex items-center justify-between relative flex-nowrap mamabear:flex-wrap mamabear:gap-y-1 babybear:flex-wrap babybear:py-1.5
        " aria-label="Primary">

    <a href="#"
       class="nav__logo-link link-no-visited-state z-1 mr-auto babybear:z-0 babybear:mr-0 babybear:flex-1 hover:no-underline focus:no-underline active:no-underline"
       data-tracking-control-name="guest_homepage-jobseeker_nav-header-logo" data-tracking-will-navigate>
        <img style="width: 100px;height: 100px"
             src="https://www.shutterstock.com/image-vector/job-searching-icon-260nw-1224749530.jpg" alt="">
    </a>

    <div class="nav__cta-container order-3 flex gap-x-1 justify-end min-w-[100px] flex-nowrap flex-shrink-0 babybear:flex-wrap flex-2">
        <a class="nav__button-tertiary btn-md btn-tertiary"
           href="/user/register.jsp"
           data-tracking-control-name="guest_homepage-jobseeker_nav-header-join" data-tracking-will-navigate>
            <p style="font-size: 25px ">Join now</p>
        </a>
<%--        <a class="nav__button-secondary btn-md btn-secondary-emphasis"--%>
<%--           href="#"--%>
<%--           data-tracking-control-name="guest_homepage-jobseeker_nav-header-signin" data-tracking-will-navigate>--%>
<%--            Sign in--%>
<%--        </a>--%>
    </div>
</nav>
<main class="flex flex-col items-center overflow-hidden min-h-[calc(100vh-76px-50px)]" role="main" id="main-content">
    <section
            class="section min-h-[560px] flex-nowrap pt-[40px] babybear:flex-col babybear:min-h-[0] babybear:px-mobile-container-padding babybear:pt-[24px]"
            data-test-id="hero">
        <div class="self-start relative flex-shrink-0 w-[55%] pr-[42px] babybear:w-full babybear:pr-[0px]"
             data-test-id="hero__content">
            <h1 class="main-heading text-color-text-accent-2 babybear:pb-[24px]" data-test-id="hero__headline">
                Work freely and effectively
            </h1>
            <div class="hero-cta-form">
                <code id="i18n_password_error_empty" style="display: none"><!--"Please enter a password"--></code>
                <form data-id="sign-in-form" action="/user?action=login" method="post" novalidate
                      data-js-module-id="d2l-sign-in-form">
                    <input name="loginCsrfParam" value="83bf5670-0956-4983-8fae-6c6374c32a23" type="hidden">

                    <div class="flex flex-col">

                        <div class="mt-1.5" data-js-module-id="guest-input">
                            <div class="flex flex-col">
                                <label class="input-label mb-1" for="session_key">
                                    Email
                                </label>
                                <div class="text-input flex">
                                    <input class="text-color-text font-sans text-md outline-0 bg-color-transparent grow"
                                           autocomplete="username" id="session_key" name="email" required
                                           type="email" autocomplete="off" max="50" required>
                                </div>
                            </div>
                        </div>
                        <%--                <div class="form-group mt-1 ">--%>
                        <%--                    <label for="exampleInputName" class="my-3 h3" placeholder="Your Email">Email</label>--%>
                        <%--                    <input class="form-control" id="exampleInputName" type="email" name="email"--%>
                        <%--                           aria-describedby="nameHelp" placeholder="Your Email" autocomplete="off" max="50" required>--%>
                        <%--                    <i class="input-icon uil uil-at"></i>--%>
                        <%--                </div>--%>
                        <div class="mt-1.5" data-js-module-id="guest-input">
                            <div class="flex flex-col">
                                <label class="input-label mb-1" for="session_password">
                                    Password
                                </label>
                                <div class="text-input flex">
                                    <input class="text-color-text font-sans text-md outline-0 bg-color-transparent grow"
                                           autocomplete="current-password" id="session_password" name="password"
                                           required type="password" autocomplete="off" minlength="6" maxlength="50" required >
                                        </div>
                                    </div>
                                    <p class="input-helper mt-1.5" for="session_password" role="alert"
                                       data-js-module-id="guest-input__message"></p>
                                </div>
        <%--                        <div class="form-group py-3">&ndash;%&gt;--%>
                            <%--                    <label for="exampleInputEmail1" class="my-3 h3">Password</label>--%>
                            <%--                    <input type="password" class="form-control" name="password" id="exampleInputEmail1"--%>
                            <%--                           aria-describedby="emailHelp" placeholder="Your Password" autocomplete="off" minlength="6"--%>
                            <%--                           maxlength="50" required>--%>
                            <%--                </div>--%>
                    </div>
                    <div data-id="sign-in-form__footer" class="flex justify-between
          sign-in-form__footer--full-width">
                        <input name="trk" value="homepage-jobseeker_sign-in-submit" type="hidden">
                        <button class="btn-md btn-primary flex-shrink-0 cursor-pointer
            sign-in-form__submit-btn--full-width w-full max-w-[400px] mx-auto" data-id="sign-in-form__submit-btn"
                                data-tracking-control-name="homepage-jobseeker_sign-in-submit-btn" data-tracking-litms
                                type="submit">
                            Sign in
                        </button>
                    </div>
                    <div class="sign-in-form__divider left-right-divider pt-2 pb-3"></div>
                </form>
                <div class="w-full max-w-[400px] mx-auto">
                    <div class="google-auth-button">
                        <div class="google-auth-button__placeholder"></div>
                    </div>

                </div>
            </div>
        </div>
        <img class="flip-rtl block z-[-1] w-[700px] h-[560px] relative flex-shrink babybear:w-[374px] babybear:h-[214px] babybear:static"
             alt="Millions of jobs and people hiring" data-test-id="hero__illustration"
             src="https://blogcdn.muaban.net/wp-content/uploads/2022/08/21000814/3D-Artist-1.jpg">
    </section>
    <section class="section py-section">
        <div class="flex flex-row flex-wrap justify-between w-full babybear:flex-column mamabear:py-[60px] mamabear:px-[0px] papabear:py-[60px] papabear:px-[0px]"
             data-test-id="product-cta">
            <section class="tile-module section py-section flex-wrap">
                <div class="flex flex-grow mr-[16px] self-start flex-col last:mr-0">
                    <img class="flex-shrink-0 h-[312px] mr-[72px] mb-[16px] w-[312px] babybear:h-[240px] babybear:w-[240px]"
                         data-delayed-url="https://static.licdn.com/aero-v1/sc/h/b1fxwht7hdbeusleja7ciftsj" alt>
                    <div class="max-w-[456px] my-auto babybear:w-full">
                        <h2 class="secondary-heading">
                            Connect with people who can help
                        </h2>
                    </div>
                </div>
                <div class="flex flex-grow mr-[16px] self-start flex-col last:mr-0">
                    <img class="flex-shrink-0 h-[312px] mr-[72px] mb-[16px] w-[312px] babybear:h-[240px] babybear:w-[240px]"
                         data-delayed-url="https://static.licdn.com/aero-v1/sc/h/dkfub4sc7jgzg3o31flfr91rv" alt>
                    <div class="max-w-[456px] my-auto babybear:w-full">
                        <h2 class="secondary-heading">
                            Learn the skills you need to succeed
                        </h2>
                        <div class="mt-[40px] babybear:mt-[24px]">
                            <div class="dropdown-to-modal learning-cta__dropdown-modal">
                                <div class="collapsible-dropdown flex items-center relative hyphens-auto"></div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </div>

    </section>
    <!---->
    <section class="section min-h-section py-section">


        <div class="flex flex-row flex-nowrap h-[720px] w-full after:full-color-bkg after:content-[''] after:bg-color-background-canvas papabear:after:brand-discovery-bkg mamabear:after:brand-discovery-bkg babybear:h-full"
             data-impression-id="homepage-jobseeker_brand-discovery" data-test-id="brand-discovery">


            <div class="flex flex-row flex-nowrap h-auto mb-hero-content babybear:w-full babybear:mb-[0px] !block min-w-[50%] w-[50%] my-auto pr-[50px] babybear:pr-[0px]"
                 data-test-id data-impression-id="homepage-jobseeker_brand-discovery_intent-module">

                <h1 class="tertiary-heading mb-[8px] position-relative " style="margin-top: -336px">
                    Job search mindset
                </h1>
                <h2 class="etta-subtitle mb-[40px] babybear:mb-[24px]">
                    Search for the best and never test
                </h2>
            </div>
            <img class="h-[840px] self-center ml-[96px] flip-rtl babybear:hidden"
                 data-delayed-url="https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fce66344c-2192-4e5d-8044-2ae9314acc5d_4608x3072.jpeg"
                 alt="Who is LinkedIn for?">
        </div>

    </section>
    <section class="section min-h-section py-section">


        <div class="w-full self-start lazy-load after-lazy-bg-join after:content-[''] after:full-color-bkg after:bg-repeat-x after:bg-bottom after:bg-full-y babybear:h-full babybear:p-[0] babybear:after:content-[none]"
             data-test-id="join-cta" data-impression-id="guest_homepage-jobseeker_join-cta">
            <h2 data-test-id="join-cta__header"
                class="main-heading text-black-a90 mt-[20px] mb-[40px] keep-all babybear:mt-[0px] babybear:mb-[24px]"
                id="join-cta__header">
                Join your colleagues, classmates, and friends on LinkedIn.
            </h2>

            <a class="btn-md mb-1.5 mr-[6px] flex items-center w-max float-left btn-primary"
               data-tracking-control-name="guest_homepage-jobseeker_join-cta" data-tracking-will-navigate
               href="#"
               aria-describedby="join-cta__header">
                Get started
            </a>
        </div>
    </section>
</main>
<footer class="li-footer bg-transparent w-full ">
    <ul class="li-footer__list flex flex-wrap flex-row items-start justify-start w-full h-auto min-h-[50px] my-[0px] mx-auto py-3 px-2 papabear:w-[1128px] papabear:p-0">

        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">

            <span class="sr-only">SearchJob</span>
            <img style="width: 34px ; height: 19px" src="https://www.shutterstock.com/image-vector/job-searching-icon-260nw-1224749530.jpg" alt="">
            <span class="li-footer__copy-text flex items-center">&copy; 2023</span>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-about" data-tracking-will-navigate>
                About
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-accessibility" data-tracking-will-navigate>
                Accessibility
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-user-agreement" data-tracking-will-navigate>
                User Agreement
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-privacy-policy" data-tracking-will-navigate>
                Privacy Policy
            </a>
        </li>

        <!---->
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-cookie-policy" data-tracking-will-navigate>
                Cookie Policy
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-copyright-policy" data-tracking-will-navigate>
                Copyright Policy
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-brand-policy" data-tracking-will-navigate>
                Brand Policy
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-guest-controls" data-tracking-will-navigate>
                Guest Controls
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-community-guide" data-tracking-will-navigate>
                Community Guidelines
            </a>
        </li>
    </ul>
</footer>

<script src="https://static.licdn.com/aero-v1/sc/h/a230zry6r1i1jz5naiqsijwus" async defer></script>
<script data-delayed-url="https://static.licdn.com/aero-v1/sc/h/51t74mlo1ty7vakn3a80a9jcp"
        data-module-id="apfc-lib"></script>
<code id="apfcLix" style="display: none"><!--true--></code>
<script data-delayed-url="https://static.licdn.com/aero-v1/sc/h/8m736dfzskmdn6bwwqz67iiki"
        data-module-id="google-gsi-lib"></script>
<script src="https://static.licdn.com/aero-v1/sc/h/cy523xojuc8yvy6fyiy9hd1el" async></script>
</body>



<%--<body>--%>
<%--                <div class="form-group mt-1 ">--%>
<%--                    <label for="exampleInputName" class="my-3 h3" placeholder="Your Email">Email</label>--%>
<%--                    <input class="form-control" id="exampleInputName" type="email" name="email"--%>
<%--                           aria-describedby="nameHelp" placeholder="Your Email" autocomplete="off" max="50" required>--%>
<%--                    <i class="input-icon uil uil-at"></i>--%>
<%--                </div>--%>

<%--                <div class="form-group py-3">--%>
<%--                    <label for="exampleInputEmail1" class="my-3 h3">Password</label>--%>
<%--                    <input type="password" class="form-control" name="password" id="exampleInputEmail1"--%>
<%--                           aria-describedby="emailHelp" placeholder="Your Password" autocomplete="off" minlength="6"--%>
<%--                           maxlength="50" required>--%>
<%--                </div>--%>
<%--                <div>--%>
<%--                    <button type="submit" class="btn btn-primary my-3 py-3">SIGN IN</button>--%>
<%--                    <p class="text-end">--%>
<%--                        <button class="btn" style="text-color:white"><a href="/user/register.jsp">SIGN UP</a></button>--%>
<%--                    </p>--%>

<%--                    <p class="text-center text-danger">${loginFail}</p>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"--%>
<%--        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--</body>--%>
</html>