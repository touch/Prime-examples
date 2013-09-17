/*
 * Copyright (c) 2010, The PrimeVC Project Contributors
 * All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *   - Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   - Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE PRIMEVC PROJECT CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE PRIMVC PROJECT CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
 * DAMAGE.
 *
 *
 * Authors:
 *  Ruben Weijers	<ruben @ prime.vc>
 */
package ;
 import prime.gui.styling.LayoutStyleFlags;
 import prime.gui.styling.StyleChildren;
 import prime.gui.styling.StyleBlockType;
 import prime.gui.styling.StyleBlock;
 import prime.types.Number;
 import prime.core.geom.Box;
 import prime.core.geom.Corners;
 import prime.core.geom.space.Horizontal;
 import prime.core.geom.space.Vertical;
 import prime.gui.behaviours.layout.ClippedLayoutBehaviour;
 import prime.gui.behaviours.scroll.ShowScrollbarsBehaviour;
 import prime.gui.components.skins.BasicPanelSkin;
 import prime.gui.components.skins.ButtonIconLabelSkin;
 import prime.gui.components.skins.ButtonIconSkin;
 import prime.gui.components.skins.ButtonLabelSkin;
 import prime.gui.components.skins.InputFieldSkin;
 import prime.gui.components.skins.SlidingToggleButtonSkin;
 import prime.gui.effects.MoveEffect;
 import prime.gui.graphics.borders.CapsStyle;
 import prime.gui.graphics.borders.JointStyle;
 import prime.gui.graphics.borders.SolidBorder;
 import prime.gui.graphics.fills.SolidFill;
 import prime.gui.graphics.shapes.RegularRectangle;
 import prime.gui.styling.EffectsStyle;
 import prime.gui.styling.GraphicsStyle;
 import prime.gui.styling.LayoutStyle;
 import prime.gui.styling.StatesStyle;
 import prime.gui.styling.StyleBlock;
 import prime.gui.styling.StyleBlockType;
 import prime.gui.styling.TextStyle;
 import prime.gui.text.TextAlign;
 import prime.gui.text.TextTransform;
 import prime.layout.algorithms.floating.HorizontalFloatAlgorithm;
 import prime.layout.algorithms.floating.VerticalFloatAlgorithm;
 import prime.layout.algorithms.RelativeAlgorithm;
 import prime.layout.RelativeLayout;



/**
 * This class is a template for generating UIElementStyle classes
 */
class StyleSheet extends StyleBlock
{
	public static var version = 1379403862.232;

	public function new ()
	{
		super("", 0, StyleBlockType.specific);
		elementChildren		= new ChildrenList();
		styleNameChildren	= new ChildrenList();
		idChildren			= new ChildrenList();
		
		
		var styleBlock0 = new StyleBlock('IDisplayObject', 64, StyleBlockType.element, new GraphicsStyle(56, null, null, new RegularRectangle(), null, null, true, 1));
		this.elementChildren.set('prime.gui.display.IDisplayObject', styleBlock0);
		var styleBlock1 = new StyleBlock('UIWindow', 66, StyleBlockType.element, new GraphicsStyle(128, null, null, null, null, function (a) { return new ClippedLayoutBehaviour(a); }));
		styleBlock1.set_inheritedStyles(null, styleBlock0);
		this.elementChildren.set('prime.gui.core.UIWindow', styleBlock1);
		var styleBlock2 = new StyleBlock('UIGraphic', 66, StyleBlockType.element, new GraphicsStyle(8, null, null, new RegularRectangle()));
		styleBlock2.set_inheritedStyles(null, styleBlock0);
		this.elementChildren.set('prime.gui.core.UIGraphic', styleBlock2);
		var styleBlock3 = new StyleBlock('Button', 0x000C72, StyleBlockType.element, new GraphicsStyle(3, new SolidFill(-16776961), null, null, function () { return new ButtonLabelSkin(); }), new LayoutStyle(0x00100B, null, null, new Box(20, 20, 20, 20), function () { return new HorizontalFloatAlgorithm(Horizontal.center, Vertical.center); }, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, 50, 50), new TextStyle(7, 10, 'Arial', false, 0x444444FF));
		styleBlock3.set_inheritedStyles(null, styleBlock0);
		var styleBlock4 = new StyleBlock('UITextField', 18, StyleBlockType.element, null, new LayoutStyle(0x000100, null, null, null, null, LayoutStyleFlags.FILL));
		styleBlock4.set_inheritedStyles(null, styleBlock0, null, styleBlock3);
		styleBlock3.set_children(null, null, ['prime.gui.core.UITextField' => styleBlock4]);
		var styleBlock5 = new StyleBlock('hover', 64, StyleBlockType.elementState, new GraphicsStyle(2, new SolidFill(0x00FFFF)));
		styleBlock5;
		styleBlock3.states = new StatesStyle(2, [2 => styleBlock5]);
		var styleBlock6 = new StyleBlock('InputField', 66, StyleBlockType.element, new GraphicsStyle(5, null, new SolidBorder(new SolidFill(255), 1, false, CapsStyle.NONE, JointStyle.ROUND, false), null, function () { return new InputFieldSkin(); }));
		styleBlock6.set_inheritedStyles(null, styleBlock3);
		this.elementChildren.set('prime.gui.components.InputField', styleBlock6);
		var styleBlock7 = new StyleBlock('Label', 34, StyleBlockType.element, null, null, new TextStyle(3, 12, 'Verdana', false));
		styleBlock7.set_inheritedStyles(null, styleBlock0);
		this.elementChildren.set('prime.gui.components.Label', styleBlock7);
		var styleBlock8 = new StyleBlock('Image', 66, StyleBlockType.element, new GraphicsStyle(8, null, null, new RegularRectangle()));
		styleBlock8.set_inheritedStyles(null, styleBlock2);
		this.elementChildren.set('prime.gui.components.Image', styleBlock8);
		this.elementChildren.set('prime.gui.components.Button', styleBlock3);
		var styleBlock9 = new StyleBlock('TextArea', 82, StyleBlockType.element, new GraphicsStyle(129, null, null, null, null, function (a) { return new ShowScrollbarsBehaviour(a); }), new LayoutStyle(8));
		styleBlock9.set_inheritedStyles(null, styleBlock6);
		this.elementChildren.set('prime.gui.components.TextArea', styleBlock9);
		var styleBlock10 = new StyleBlock('SliderBase', 82, StyleBlockType.element, new GraphicsStyle(2, new SolidFill(-1)), new LayoutStyle(8, null, null, null, function () { return new RelativeAlgorithm(); }));
		styleBlock10.set_inheritedStyles(null, styleBlock0);
		this.elementChildren.set('prime.gui.components.SliderBase', styleBlock10);
		var styleBlock11 = new StyleBlock('ScrollBar', 66, StyleBlockType.element, new GraphicsStyle(2, new SolidFill(0x212121FF)));
		styleBlock11.set_inheritedStyles(null, styleBlock10);
		this.elementChildren.set('prime.gui.components.ScrollBar', styleBlock11);
		var styleBlock12 = new StyleBlock('ComboBox', 82, StyleBlockType.element, new GraphicsStyle(1, null, null, null, function () { return new ButtonIconLabelSkin(); }), new LayoutStyle(32, null, null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.FLOAT_NOT_SET, null, null, 40));
		styleBlock12.set_inheritedStyles(null, styleBlock3);
		this.elementChildren.set('prime.gui.components.ComboBox', styleBlock12);
		var styleBlock13 = new StyleBlock('UIContainer', 18, StyleBlockType.element, null, new LayoutStyle(8, null, null, null, function () { return new HorizontalFloatAlgorithm(); }));
		styleBlock13.set_inheritedStyles(null, styleBlock0);
		var styleBlock14 = new StyleBlock('Panel', 0x002042, StyleBlockType.element, new GraphicsStyle(1, null, null, null, function () { return new BasicPanelSkin(); }));
		styleBlock14.set_inheritedStyles(null, styleBlock13);
		var styleBlock15 = new StyleBlock('closeBtn', 64, StyleBlockType.id, new GraphicsStyle(1, null, null, null, function () { return new ButtonIconSkin(); }));
		styleBlock15;
		styleBlock14.set_children(['closeBtn' => styleBlock15]);
		this.elementChildren.set('prime.gui.components.Panel', styleBlock14);
		var styleBlock16 = new StyleBlock('DebugBar', 0x000C52, StyleBlockType.element, new GraphicsStyle(34, new SolidFill(0x111111AA), null, null, null, null, null, 0.5), new LayoutStyle(0x00010C, new RelativeLayout(Number.INT_NOT_SET, Number.INT_NOT_SET, 0), null, null, function () { return new HorizontalFloatAlgorithm(Horizontal.center, Vertical.center); }, 1));
		styleBlock16.set_inheritedStyles(null, styleBlock13);
		var styleBlock17 = new StyleBlock('Button', 0x000476, StyleBlockType.element, new GraphicsStyle(3, new SolidFill(-858993409), null, null, function () { return new ButtonLabelSkin(); }), new LayoutStyle(0x003008, null, new Box(4, 6, 4, 6), new Box(5, 5, 5, 5)), new TextStyle(5, 10, null, false, 0x333333FF));
		styleBlock17.set_inheritedStyles(null, styleBlock0, styleBlock3, styleBlock16);
		var styleBlock18 = new StyleBlock('hover', 68, StyleBlockType.elementState, new GraphicsStyle(2, new SolidFill(-1)));
		styleBlock18.set_inheritedStyles(null, null, styleBlock5, styleBlock17);
		var styleBlock19 = new StyleBlock('selected', 64, StyleBlockType.elementState, new GraphicsStyle(2, new SolidFill(-1)));
		styleBlock19;
		styleBlock17.states = new StatesStyle(0x000802, [2 => styleBlock18, 0x000800 => styleBlock19]);
		styleBlock16.set_children(null, null, ['prime.gui.components.Button' => styleBlock17]);
		var styleBlock20 = new StyleBlock('hover', 64, StyleBlockType.elementState, new GraphicsStyle(32, null, null, null, null, null, null, 1));
		styleBlock20;
		styleBlock16.states = new StatesStyle(2, [2 => styleBlock20]);
		this.elementChildren.set('prime.gui.components.DebugBar', styleBlock16);
		this.elementChildren.set('prime.gui.core.UIContainer', styleBlock13);
		var styleBlock21 = new StyleBlock('UIComponent', 66, StyleBlockType.element, new GraphicsStyle(36, null, new SolidBorder(new SolidFill(-16711681), 3, false, CapsStyle.NONE, JointStyle.ROUND, false), null, null, null, null, 0.7));
		var styleBlock22 = new StyleBlock('debug', 0x000800, StyleBlockType.styleName);
		styleBlock21.set_inheritedStyles(null, styleBlock0, null, styleBlock22);
		styleBlock22.set_children(null, null, ['prime.gui.core.UIComponent' => styleBlock21]);
		this.styleNameChildren.set('debug', styleBlock22);
		var styleBlock23 = new StyleBlock('ListView', 18, StyleBlockType.element, null, new LayoutStyle(0x000300, null, null, null, null, 1, 1));
		var styleBlock24 = new StyleBlock('listHolder', 0x000810, StyleBlockType.styleName, null, new LayoutStyle(8, null, null, null, function () { return new VerticalFloatAlgorithm(Vertical.top, Horizontal.left); }));
		styleBlock23.set_inheritedStyles(null, styleBlock0, null, styleBlock24);
		var styleBlock25 = new StyleBlock('SelectableListView', 18, StyleBlockType.element, null, new LayoutStyle(0x000300, null, null, null, null, 1, 1));
		styleBlock25.set_inheritedStyles(null, styleBlock23, null, styleBlock24);
		styleBlock24.set_children(null, null, ['prime.gui.components.ListView' => styleBlock23, 'prime.gui.components.SelectableListView' => styleBlock25]);
		this.styleNameChildren.set('listHolder', styleBlock24);
		var styleBlock26 = new StyleBlock('UIGraphic', 22, StyleBlockType.element, null, new LayoutStyle(0x000300, null, null, null, null, 0, 1));
		var styleBlock27 = new StyleBlock('horizontalSlider', 0x000810, StyleBlockType.styleName, null, new LayoutStyle(34, null, null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, Number.INT_NOT_SET, 4, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.FLOAT_NOT_SET, null, null, 30));
		styleBlock26.set_inheritedStyles(null, styleBlock0, styleBlock2, styleBlock27);
		var styleBlock28 = new StyleBlock('Button', 86, StyleBlockType.element, new GraphicsStyle(3, new SolidFill(0x666666FF)), new LayoutStyle(7, new RelativeLayout(Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, 0), null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, 6, 15));
		styleBlock28.set_inheritedStyles(null, styleBlock0, styleBlock3, styleBlock27);
		styleBlock27.set_children(null, null, ['prime.gui.core.UIGraphic' => styleBlock26, 'prime.gui.components.Button' => styleBlock28]);
		this.styleNameChildren.set('horizontalSlider', styleBlock27);
		var styleBlock29 = new StyleBlock('UIGraphic', 22, StyleBlockType.element, null, new LayoutStyle(0x000304, new RelativeLayout(Number.INT_NOT_SET, Number.INT_NOT_SET, 0), null, null, null, 1, 0));
		var styleBlock30 = new StyleBlock('verticalSlider', 0x000810, StyleBlockType.styleName, null, new LayoutStyle(129, null, null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, 4, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.FLOAT_NOT_SET, null, null, Number.INT_NOT_SET, Number.INT_NOT_SET, 30));
		styleBlock29.set_inheritedStyles(null, styleBlock0, styleBlock2, styleBlock30);
		var styleBlock31 = new StyleBlock('Button', 86, StyleBlockType.element, new GraphicsStyle(3, new SolidFill(0x666666FF)), new LayoutStyle(135, new RelativeLayout(Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, 0), null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, 15, 6, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.FLOAT_NOT_SET, null, null, Number.INT_NOT_SET, Number.INT_NOT_SET, 15));
		styleBlock31.set_inheritedStyles(null, styleBlock0, styleBlock3, styleBlock30);
		styleBlock30.set_children(null, null, ['prime.gui.core.UIGraphic' => styleBlock29, 'prime.gui.components.Button' => styleBlock31]);
		this.styleNameChildren.set('verticalSlider', styleBlock30);
		var styleBlock32 = new StyleBlock('Button', 86, StyleBlockType.element, new GraphicsStyle(2, new SolidFill(0x212121FF)), new LayoutStyle(39, new RelativeLayout(Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, 0), null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, 6, 9, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.FLOAT_NOT_SET, null, null, 15));
		var styleBlock33 = new StyleBlock('horizontalScrollBar', 0x000810, StyleBlockType.styleName, null, new LayoutStyle(2, null, null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, Number.INT_NOT_SET, 2));
		styleBlock32.set_inheritedStyles(null, styleBlock0, styleBlock3, styleBlock33);
		styleBlock33.set_children(null, null, ['prime.gui.components.Button' => styleBlock32]);
		this.styleNameChildren.set('horizontalScrollBar', styleBlock33);
		var styleBlock34 = new StyleBlock('Button', 86, StyleBlockType.element, new GraphicsStyle(3, new SolidFill(0x212121FF)), new LayoutStyle(135, new RelativeLayout(Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, 0), null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, 9, 6, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.FLOAT_NOT_SET, null, null, Number.INT_NOT_SET, Number.INT_NOT_SET, 15));
		var styleBlock35 = new StyleBlock('verticalScrollBar', 0x000810, StyleBlockType.styleName, null, new LayoutStyle(1, null, null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, 2));
		styleBlock34.set_inheritedStyles(null, styleBlock0, styleBlock3, styleBlock35);
		styleBlock35.set_children(null, null, ['prime.gui.components.Button' => styleBlock34]);
		this.styleNameChildren.set('verticalScrollBar', styleBlock35);
		var styleBlock36 = new StyleBlock('SelectableListView', 0x000852, StyleBlockType.element, new GraphicsStyle(128, null, null, null, null, function (a) { return new ShowScrollbarsBehaviour(a); }), new LayoutStyle(0x00A3CB, null, new Box(0, 0, 0, 0), null, function () { return new VerticalFloatAlgorithm(Vertical.top, Horizontal.left); }, Number.EMPTY, Number.EMPTY, Number.EMPTY, Number.EMPTY, Number.INT_NOT_SET, 20, Number.FLOAT_NOT_SET, null, null, Number.INT_NOT_SET, Number.INT_NOT_SET, 60, 0x0001F4));
		var styleBlock37 = new StyleBlock('comboList', 0x000840, StyleBlockType.styleName, new GraphicsStyle(0x000106, new SolidFill(-101058049), new SolidBorder(new SolidFill(0x707070FF), 1, false, CapsStyle.NONE, JointStyle.ROUND, false), null, null, null, null, Number.FLOAT_NOT_SET, null, null, new Corners(10, 10, 10, 10)));
		styleBlock36.set_inheritedStyles(null, styleBlock0, null, styleBlock37);
		var styleBlock38 = new StyleBlock('Button', 86, StyleBlockType.element, new GraphicsStyle(1, null, null, null, function () { return new ButtonIconLabelSkin(); }), new LayoutStyle(0x011100, null, null, new Box(0, 0, 0, 0), null, 1, Number.FLOAT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.FLOAT_NOT_SET, null, null, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, 1));
		styleBlock38.set_inheritedStyles(null, styleBlock0, styleBlock3, styleBlock36);
		styleBlock36.set_children(null, null, ['prime.gui.components.Button' => styleBlock38]);
		styleBlock37.set_children(null, null, ['prime.gui.components.SelectableListView' => styleBlock36]);
		this.styleNameChildren.set('comboList', styleBlock37);
		var styleBlock39 = new StyleBlock('onBg', 80, StyleBlockType.id, new GraphicsStyle(2, new SolidFill(-16776961)), new LayoutStyle(4, new RelativeLayout(1, Number.INT_NOT_SET, 1)));
		styleBlock39;
		var styleBlock40 = new StyleBlock('onLabel', 32, StyleBlockType.id, null, null, new TextStyle(4, Number.INT_NOT_SET, null, false, -1));
		styleBlock40;
		var styleBlock41 = new StyleBlock('slide', 208, StyleBlockType.id, new GraphicsStyle(0x00010A, new SolidFill(-1), null, new RegularRectangle(), null, null, null, Number.FLOAT_NOT_SET, null, null, new Corners(5, 5, 5, 5)), new LayoutStyle(0x000300, null, null, null, null, 0.51, 1.1), null, new EffectsStyle(32, new MoveEffect(180, Number.INT_NOT_SET, null, false)));
		styleBlock41;
		var styleBlock42 = new StyleBlock('UITextField', 50, StyleBlockType.element, null, new LayoutStyle(0x000104, new RelativeLayout(Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, Number.INT_NOT_SET, 0), null, null, null, 1), new TextStyle(0x000247, 8, 'Lucida Grande', false, -1, null, null, Number.FLOAT_NOT_SET, TextAlign.CENTER, null, Number.FLOAT_NOT_SET, TextTransform.uppercase));
		var styleBlock43 = new StyleBlock('slideToggleButton', 0x002850, StyleBlockType.styleName, new GraphicsStyle(0x000103, new SolidFill(0x666666FF), null, null, function () { return new SlidingToggleButtonSkin(); }, null, null, Number.FLOAT_NOT_SET, null, null, new Corners(5, 5, 5, 5)), new LayoutStyle(3, null, null, null, null, Number.FLOAT_NOT_SET, Number.FLOAT_NOT_SET, 50, 30));
		styleBlock42.set_inheritedStyles(null, styleBlock0, null, styleBlock43);
		styleBlock43.set_children(['onBg' => styleBlock39, 'onLabel' => styleBlock40, 'slide' => styleBlock41], null, ['prime.gui.core.UITextField' => styleBlock42]);
		this.styleNameChildren.set('slideToggleButton', styleBlock43);
		this.idChildren.set('modal', new StyleBlock('modal', 80, StyleBlockType.id, new GraphicsStyle(2, new SolidFill(-2004318089)), new LayoutStyle(0x000300, null, null, null, null, 1, 1)));
		this.idChildren.set('toolTip', new StyleBlock('toolTip', 96, StyleBlockType.id, new GraphicsStyle(2, new SolidFill(0x555555FF)), null, new TextStyle(7, 9, 'Verdana', false, -1)));
	}
}