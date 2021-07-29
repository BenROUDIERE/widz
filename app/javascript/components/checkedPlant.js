const checkedPlant = () => {
    $(document).on("change", "input[type='checkbox']", function () {
	    // $(this).closest('.plant')[this.checked ? "addClass" : "removeClass"]("checked");
        $(this).closest('div > #tag-task')[this.checked ? "addClass" : "removeClass"]("checked");
    });
    
}

export { checkedPlant };