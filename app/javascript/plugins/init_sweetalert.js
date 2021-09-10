import Swal from "sweetalert2";

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector('#sweet-alert-demo');
  if (swalButton) {
    let max_people = document.getElementById('max_people').innerText;
    // protect other pages
    swalButton.addEventListener("click", (event) => {
      event.preventDefault();
      let max_peopleConverted = parseInt(max_people, 10);
      console.log(max_peopleConverted);
      // swal(options);
      Swal.fire({
        title: "Join this adventure?",
        text: `There are still ${max_peopleConverted} people left`,
        icon: "question",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, join now!",
      }).then((result) => {
        if (result.isConfirmed) {
          // Swal.fire(
          //   "Sock Bought!",
          //   "You'll receive a message from the owner soon!",
          //   "success"
          // );
          document.querySelector('#new_booking').submit();
        }
      });
    });
  }
};

export { initSweetalert };
