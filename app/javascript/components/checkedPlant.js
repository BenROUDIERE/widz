const checkedPlant = () => {
    $(document).on("change", "input[type='checkbox']", function () {
	    // $(this).closest('.plant')[this.checked ? "addClass" : "removeClass"]("checked");
        $(this).closest('div > .card-plant')[this.checked ? "addClass" : "removeClass"]("checked");
    });
}

export { checkedPlant };