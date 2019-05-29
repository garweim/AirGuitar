import "bootstrap";
const displayAlertOnButtonClick = () => {
  // TODO: Select the big green button
  const button = document.querySelector("submit");
  // TODO: Bind the `click` event to the button
  button.addEventListener("click", (event) => {
    alert("Offering created!");
  });
  // TODO: On click, display `Thank you!` in a JavaScript alert!
};

displayAlertOnButtonClick();
