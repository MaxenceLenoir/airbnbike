const alert_destroy = () => {
  const alerteMessage = document.getElementById('alert');
  const buttonDelete = document.getElementById('delete_button');
  buttonDelete.addEventListener("click", () => {
    alerteMessage.classList.add("visible")
    alerteMessage.classList.remove("invisible");
  });
};

export { alert_destroy };