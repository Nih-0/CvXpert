document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("#loginForm");

    form.addEventListener("submit", function (event) {
        event.preventDefault();
        const username = form.querySelector("input[type='text']").value;
        const password = form.querySelector("input[type='password']").value;

        if (username === "" || password === "") {
            alert("Please enter both username and password.");
        }
    });
});
