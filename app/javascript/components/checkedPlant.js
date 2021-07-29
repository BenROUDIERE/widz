const checkedPlant = () => {
    $(document).on("change", "input[type='checkbox']", function () {
	    $(this).closest('.card')[this.checked ? "addClass" : "removeClass"]("checked");
        $(this).closest('div > #tag-task')[this.checked ? "addClass" : "removeClass"]("checked");
    });
    
}

export { checkedPlant };