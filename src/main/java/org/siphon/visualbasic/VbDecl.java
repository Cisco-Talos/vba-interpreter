/*******************************************************************************
 * Copyright (C) 2017 Inshua<inshua@gmail.com>
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 ******************************************************************************/
package org.siphon.visualbasic;

import org.siphon.visualbasic.interpreter.Interpreter;
import org.siphon.visualbasic.interpreter.types.Type;
import org.siphon.visualbasic.runtime.Value;
import org.siphon.visualbasic.runtime.VbValue;

public class VbDecl extends Value {
	protected String name;
	protected Visibility visibility = Visibility.PRIVATE;
	protected final Library library;
	
	public Library getLibrary() {
		return this.library;
	}
	
	public VbDecl(Library library){
		this.library = library;
	}
	
	public static final VbDecl AMBIGUOUS = new VbDecl(null);
	public static final VbDecl COMPILER_UNKNOWN = new VbDecl(null);
	
	public String getName(){
		return name.toUpperCase();
	}
	
	public void setName(String name) {
		this.name = name.toUpperCase();
	}
	
	public Visibility getVisibility() {
		return this.visibility;
	}
	
	public void setVisibility(Visibility visibility) {
		this.visibility = visibility;
	}

	@Override
	public VbValue get(Interpreter interpreter) {
		throw new UnsupportedOperationException("Can't get the value of a VbDecl");
	}

	@Override
	public void set(Interpreter interpreter, VbValue value) {
		throw new UnsupportedOperationException("Can't assign to a VbDecl");
	}
}
