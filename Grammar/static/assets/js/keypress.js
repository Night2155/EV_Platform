var input = document.getElementById("search_bar")
input.addEventListener("keypress", function (event) {
  if (event.key === "Enter") {
    event.preventDefault();
    document.getElementById("search_btn").click();
  }
});