/*
 * generated by Xtext 2.10.0
 */
package org.xtext.example.webFontIssue.formatting2

import com.google.inject.Inject
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument
import org.xtext.example.webFontIssue.font.Greeting
import org.xtext.example.webFontIssue.font.Model
import org.xtext.example.webFontIssue.services.FontGrammarAccess

class FontFormatter extends AbstractFormatter2 {
	
	@Inject extension FontGrammarAccess

	def dispatch void format(Model model, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Greeting greetings : model.getGreetings()) {
			greetings.format;
		}
	}
	
	// TODO: implement for 
}