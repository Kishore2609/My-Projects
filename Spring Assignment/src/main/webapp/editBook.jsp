<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Book List</title>

  </head>
  <body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand mb-0 h2" href="/home">Book Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

      </ul>
      <div class="d-flex">
        <p class="me-4">Welcome ${user.username}</p>
        <a class="btn btn-outline-danger" href="/logout">logout</a>
      </div>
    </div>
  </div>
</nav>

<div class="container">


<div class="row">
<h6 class="text-center">Edit Book Details</h6>
</div>
<div class="row py-1">
          <!-- First Column -->
          <div class="col-md-8 offset-md-2">
            <!-- Form -->
            <fieldset class="form-group border p-3">
              <legend  class="w-auto px-2">Edit Book</legend><hr>
              <form action="/update" method="post" id="enrollment-form" >
                <div class="row mb-3">
                  <div class="col-3 col-md-4 text-start">
                    <label for="" class="form-label">Book Code</label>
                  </div>
                  <div class="col-9 col-md-8 text-center">
                    <input type="text" readonly class="form-input m-0 w-100 rounded border-1" value="${bookObj.getBookCode()}" name="bookCode" required/>
                  </div>
                </div>
                <div class="row mb-3">
                  <div class="col-3 col-md-4 text-start">
                    <label for="" class="form-label">Book Name</label>
                  </div>
                  <div class="col-9 col-md-8 text-center">
                    <input type="text" class="form-input m-0 w-100 rounded border-1" value="${bookObj.getBookName()}" name="bookName" required/>
                  </div>
                </div>
  
                <div class="row mb-3">
                  <div class="col-3 col-md-4 text-start">
                    <label for="" class="form-label">Author</label>
                  </div>
                  <div class="col-9 col-md-8 text-center">
                   <select class="form-select m-0 w-100 rounded border-1" name="bookAuthor" id="author" aria-label="Default select example">
                     <option value="Andy Hunt">Andy Hunt</option>
                     <option value="Shekspier">Shekspier</option>
                     <option value="Einsteen">Einsteen</option>
                     <option value="Dr.Amit Kumar">Dr.Amit Kumar</option>
                     <option value="Prof. Abhinav">Prof. Abhinav</option>
                     
                   </select>
                  </div>
                </div>
  
                <div class="row mb-3">
                  <div class="col-3 col-md-4 text-start">
                      <label for="" class="form-label">Added On</label>
                  </div>
                  <div class="col-9 col-md-8 text-center">
                      <input type="date" class="form-input m-0 w-100 rounded border-1" value="${bookObj.getDateTime()}" name="dateTime" required/>
                  </div>
                </div>
  
                <div class="row mb-3 mt-2">
                  <div class="col">
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button class="btn btn-danger" type="reset" onclick="">Clear</button>
                  </div>
                </div>
              </form>
              </fieldset>
          </div>
          </div>

</div>






  <!-- Footer -->
    <footer class="text-center text-dark">
      <div class="container">
        <p class="m-0">&copy; 2021-2022 Java Fresher Training</p>
      </div>
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>