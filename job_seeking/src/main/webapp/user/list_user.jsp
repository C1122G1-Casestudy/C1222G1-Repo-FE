<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/7/2023
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<section class="vh-100 gradient-custom-2">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-12 col-xl-10">

                <div class="card mask-custom">
                    <div class="card-body p-4 text-white">

                        <div class="text-center pt-3 pb-2">
                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-todo-list/check1.webp"
                                 alt="Check" width="60">
                            <h2 class="my-4">Task List</h2>
                        </div>

                        <table class="table text-white mb-0">
                            <thead>
                            <tr>
                                <th scope="col">Team Member</th>
                                <th scope="col">Task</th>
                                <th scope="col">Priority</th>
                                <th scope="col">Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="fw-normal">
                                <th>
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: auto;">
                                    <span class="ms-2">Alice Mayer</span>
                                </th>
                                <td class="align-middle">
                                    <span>Call Sam For payments</span>
                                </td>
                                <td class="align-middle">
                                    <h6 class="mb-0"><span class="badge bg-danger">High priority</span></h6>
                                </td>
                                <td class="align-middle">
                                    <a href="#!" data-mdb-toggle="tooltip" title="Done"><i
                                            class="fas fa-check fa-lg text-success me-3"></i></a>
                                    <a href="#!" data-mdb-toggle="tooltip" title="Remove"><i
                                            class="fas fa-trash-alt fa-lg text-warning"></i></a>
                                </td>
                            </tr>
                            <tr class="fw-normal">
                                <th>
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava2-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: auto;">
                                    <span class="ms-2">Kate Moss</span>
                                </th>
                                <td class="align-middle">Make payment to Bluedart</td>
                                <td class="align-middle">
                                    <h6 class="mb-0"><span class="badge bg-success">Low priority</span></h6>
                                </td>
                                <td class="align-middle">
                                    <a href="#!" data-mdb-toggle="tooltip" title="Done"><i
                                            class="fas fa-check fa-lg text-success me-3"></i></a>
                                    <a href="#!" data-mdb-toggle="tooltip" title="Remove"><i
                                            class="fas fa-trash-alt fa-lg text-warning"></i></a>
                                </td>
                            </tr>
                            <tr class="fw-normal">
                                <th>
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: auto;">
                                    <span class="ms-2">Danny McChain</span>
                                </th>
                                <td class="align-middle">Office rent</td>
                                <td class="align-middle">
                                    <h6 class="mb-0"><span class="badge bg-warning">Middle priority</span></h6>
                                </td>
                                <td class="align-middle">
                                    <a href="#!" data-mdb-toggle="tooltip" title="Done"><i
                                            class="fas fa-check fa-lg text-success me-3"></i></a>
                                    <a href="#!" data-mdb-toggle="tooltip" title="Remove"><i
                                            class="fas fa-trash-alt fa-lg text-warning"></i></a>
                                </td>
                            </tr>
                            <tr class="fw-normal">
                                <th>
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava5-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: auto;">
                                    <span class="ms-2">Alexa Chung</span>
                                </th>
                                <td class="align-middle">Office grocery shopping</td>
                                <td class="align-middle">
                                    <h6 class="mb-0"><span class="badge bg-danger">High priority</span></h6>
                                </td>
                                <td class="align-middle">
                                    <a href="#!" data-mdb-toggle="tooltip" title="Done"><i
                                            class="fas fa-check fa-lg text-success me-3"></i></a>
                                    <a href="#!" data-mdb-toggle="tooltip" title="Remove"><i
                                            class="fas fa-trash-alt fa-lg text-warning"></i></a>
                                </td>
                            </tr>
                            <tr class="fw-normal">
                                <th class="border-0">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: auto;">
                                    <span class="ms-2">Ben Smith</span>
                                </th>
                                <td class="border-0 align-middle">Ask for Lunch to Clients</td>
                                <td class="border-0 align-middle">
                                    <h6 class="mb-0"><span class="badge bg-success">Low priority</span></h6>
                                </td>
                                <td class="border-0 align-middle">
                                    <a href="#!" data-mdb-toggle="tooltip" title="Done"><i
                                            class="fas fa-check fa-lg text-success me-3"></i></a>
                                    <a href="#!" data-mdb-toggle="tooltip" title="Remove"><i
                                            class="fas fa-trash-alt fa-lg text-warning"></i></a>
                                </td>
                            </tr>
                            </tbody>
                        </table>


                    </div>
                </div>

            </div>
        </div>
    </div>
</section>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
