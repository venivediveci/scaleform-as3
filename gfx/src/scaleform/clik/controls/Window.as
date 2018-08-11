﻿import flash.display.DisplayObject;
import flash.display.MovieClip;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.utils.getDefinitionByName;
import scaleform.clik.events.ResizeEvent;
import scaleform.clik.constants.InvalidationType;
import scaleform.clik.constants.ConstrainMode;
import scaleform.clik.core.UIComponent;
import scaleform.clik.controls.Button;
import scaleform.clik.events.ComponentEvent;
import scaleform.clik.utils.Constraints;
import scaleform.clik.utils.ConstrainedElement;
import scaleform.clik.utils.Padding;
/**
 * A CLIK Window component that can be used to display forms constructed of Flash content / CLIK components.
 * 
 * Buttons are the foundation component of the CLIK framework and are used anywhere a clickable interface control is required. The default Button class (gfx.controls.Button) supports a textField to display a label, and states to visually indicate user interaction. Buttons can be used on their own, or as part of a composite component, such as ScrollBar arrows or the Slider thumb. Most interactive components that are click-activated compose or extend Button.
    
    The CLIK Button is a general purpose button component, which supports mouse interaction, keyboard interaction, states and other functionality that allow it to be used in a multitude of user interfaces. It also supports toggle capability as well as animated states. The ToggleButton, AnimatedButton and AnimatedToggleButton provided in the Button.fla component source file all use the same base component class.
    
    <b>Inspectable Properties</b>
    The inspectable properties of the Button component are:
    <ul>
        <li><i>enabled</i>: Disables the component if set to false.</li>
        <li><i>contentPadding</i>: The top, bottom, left, and right padding that should be applied to the content loaded into the Window.</li>
        <li><i>minWidth</i>: The minimum width of the Window when it is resized via the resize Button.</li>
        <li><i>maxWidth</i>: The maximum width of the Window when it is resized via the resize Button.</li>
        <li><i>minHeight</i>: The minimum height of the Window when it is resized via the resize Button.</li>
        <li><i>maxHeight</i>: The maximum height of the Window when it is resized via the resize Button.</li>
        <li><i>source</i>: The export name of the symbol that should be loaded into the Window.</li>
        <li><i>visible</i>: Hides the component if set to false.</li>
    </ul>
    
    <b>States</b>
    The CLIK Window has no states as it loads and displays external content.
    
    <b>Events</b>
    All event callbacks receive a single Event parameter that contains relevant information about the event. The following properties are common to all events. <ul>
    <li><i>type</i>: The event type.</li>
    <li><i>target</i>: The target that generated the event.</li></ul>
        
    The events generated by the Button component are listed below. The properties listed next to the event are provided in addition to the common properties.
    <ul>
        <li><i>ComponentEvent.SHOW</i>: The visible property has been set to true at runtime.</li>
        <li><i>ComponentEvent.HIDE</i>: The visible property has been set to false at runtime or the window has been closed.</li>
    </ul>
 */
intrinsic class scaleform.clik.controls.Window extends UIComponent
{
	public var minWidth : Number;
	public var maxWidth : Number;
	public var minHeight : Number;
	public var maxHeight : Number;
	public var _title : String;
	public var _src : String;
	public var _contentPadding : Padding;
	public var _content : DisplayObject;
	public var _dragProps : Array;
	public var closeBtn : Button;
	public var okBtn : Button;
	public var resizeBtn : Button;
	public var titleBtn : Button;
	public var background : MovieClip;
	public var hit : MovieClip;

	public function get title() : String;
	public function set title(value:String) : void;

	public function get source() : String;
	public function set source(value:String) : void;

	public function get contentPadding() : Object;
	public function set contentPadding(value:Object) : void;


	public function Window();

	public function preInitialize() : void;

	public function initialize() : void;

	public function configUI() : void;

	public function draw() : void;

	public function loadSource() : void;

	public function reflowContent() : void;

	public function onWindowStartDrag(e:Event) : void;

	public function onWindowStopDrag(e:Event) : void;

	public function onResizeStartDrag(e:Event) : void;

	public function onResizeStopDrag(e:Event) : void;

	public function onResizeMouseMove(e:Event);

	public function onCloseButtonClick(e:MouseEvent) : void;

}