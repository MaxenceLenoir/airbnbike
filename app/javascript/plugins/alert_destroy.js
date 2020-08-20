const alert_destroy = () => {
  const alerteMessage = document.getElementById('alert');
  if (alerteMessage) {
    const buttonDelete = document.getElementById('delete_button');
    buttonDelete.addEventListener("click", () => {
      alerteMessage.classList.add("visible")
      alerteMessage.classList.remove("invisible");
    });
<<<<<<< HEAD
  }  
=======
  }
>>>>>>> 31a148948aa67ff699730078db78e7517a0626c2
};

export { alert_destroy };