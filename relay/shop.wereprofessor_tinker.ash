import "relay/choice.ash";
//Store	override

void main()
{
    item sse = $item[smashed scientific equipment];
    int numsse = available_amount(sse);
    buffer page_text = visit_url();

    if(numsse > 0) {
        string key = "<form";
        string info = "<div>You have <b>" + to_string(numsse) + "</b> " + "<img src='/images/itemimages/" + sse.image + "'> " + sse.name + "<div>";
        page_text.replace_string(key, info + key);
    }

	page_text.write();
	
}
