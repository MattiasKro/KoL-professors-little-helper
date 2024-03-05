/*
 * Place override
 * 
 * We override the whole "Rights side of the tracks"
 * Possible rewrite is to make use that we don't mess up any other script 
 * working on the same resources.
 *
 */
{
    buffer page_text = visit_url();

    if (page_text.contains_text("<b>Research Bench</b>")) {
        buffer skillTrees;
        skilltrees.append('<br><img src="/images/relayimages/muscle_tree.png" />');
        skilltrees.append('<img src="/images/relayimages/myst_tree.png" />');
        skilltrees.append('<img src="/images/relayimages/moxie_tree.png" />');
        int pos = page_text.index_of("Back to Your Humble Cottage");
        pos = page_text.index_of("</center>", pos);
        page_text.insert(pos, skillTrees);
    }

	page_text.write();	
}
