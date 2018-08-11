﻿import flash.display.MovieClip;
import flash.display.Sprite;
import flash.display.Stage;
import flash.events.Event;
import flash.events.MouseEvent;
import scaleform.gfx.FocusEventEx;
import scaleform.gfx.MouseEventEx;
import scaleform.clik.constants.InvalidationType;
import scaleform.clik.core.UIComponent;
import scaleform.clik.events.DragEvent;
import scaleform.clik.events.ButtonEvent;
import scaleform.clik.interfaces.IDragSlot;
import scaleform.clik.interfaces.IDataProvider;
import scaleform.clik.managers.DragManager;
/**
 *  Acts as a target for drag operations initiated with DragManager. The drag target will hide itself until a drag operation begins with a data object that it can accept, at which point it will show itself.
    
    While the usefulness of this class is limited, it provides a simple example for working with DragManager.
    
    <b>Inspectable Properties</b>
    The inspectable properties of the DragSlot component are:
    <ul>
        <li><i>enabled</i>: Disables the component if set to false.</li>
        <li><i>visible</i>: Hides the component if set to false.</li>
    </ul>
    
    <b>States</b>
    The CLIK DragSlot component supports different states based on user interaction. These states include
    <ul>
        <li>an up or default state.</li>
        <li>an over state when the mouse cursor is over the component</li>
        <li>a down state when the DragSlot is pressed.</li>
        <li>a disabled state.</li>
    </ul>
    
    These states are represented as keyframes in the Flash timeline, and are the minimal set of keyframes required for the DragSlot component to operate correctly. There are other states that extend the capabilities of the component to support complex user interactions and animated transitions, and this information is provided in the Getting Started with CLIK Buttons document.    
    
    <b>Events</b>
    All event callbacks receive a single Event parameter that contains relevant information about the event. The following properties are common to all events. <ul>
    <li><i>type</i>: The event type.</li>
    <li><i>target</i>: The target that generated the event.</li></ul>
        
    The events generated by the DragSlot component are listed below. The properties listed next to the event are provided in addition to the common properties.
    <ul>
        <li><i>ComponentEvent.SHOW</i>: The visible property has been set to true at runtime.</li>
        <li><i>ComponentEvent.HIDE</i>: The visible property has been set to false at runtime.</li>
        <li><i>DragEvent.DRAG_START</i>: A drag has been initiated from this DragSlot.</li>
        <li><i>DragEvent.DRAG_END</i>: A drag that was initiated from this DragSlot has ended.</li>
        <li><i>ButtonEvent.CLICK</i>: The DragSlot has been clicked.</li>
    </ul>
 */
intrinsic class scaleform.clik.controls.DragSlot extends UIComponent implements IDragSlot
{
	/** The x-coordinate of the original MOUSE_DOWN event. Used to discern when the mouse has traveled enough to trigger a DragEvent. */
	public var _mouseDownX : Number;
	/** The y-coordinate of the original MOUSE_DOWN event. Used to discern when the mouse has traveled enough to trigger a DragEvent. */
	public var _mouseDownY : Number;
	/** Reference to the content Sprite that will be dragged about the Stage. */
	public var _content : Sprite;
	/** Unique numeric value that represents the data held by this DragSlot. */
	public var _data : Object;
	public var _stageRef : Stage;
	public var _newFrame : String;
	public var _stateMap : Object;
	public var _state : String;
	/** Reference to the canvas which the content Sprite will be attached to. */
	public var contentCanvas : Sprite;

	/** 
         * Data related to the DragSlot. This may be include information about the slot itself or the content to be dragged.
         */
	public function get data() : Object;
	public function set data(value:Object) : void;

	/** 
         * A reference to the Sprite or MovieClip that will be dragged from the DragSlot. This will generally be a Sprite containing a Bitmap.
         */
	public function get content() : Sprite;
	public function set content(value:Sprite) : void;


	public function DragSlot();

	/** Sets the DragSlot's stage reference, required for dragging functionality, in the case that the DragSlot does not exist on the stage already . */
	public function setStage(value:Stage) : void;

	public function configUI() : void;

	public function draw() : void;

	/** @exclude */
	public function toString() : String;

	public function handleMouseOver(e:MouseEvent) : void;

	public function handleMouseDown(e:MouseEvent) : void;

	public function handleMouseRollOver(event:MouseEvent) : void;

	public function handleMouseRollOut(event:MouseEvent) : void;

	public function cleanupDragListeners() : void;

	public function handleMouseMove(e:MouseEvent) : void;

	public function handleMouseUp(e:MouseEvent) : void;

	public function handleDragStartEvent(e:DragEvent) : void;

	public function handleDropEvent(e:DragEvent) : Boolean;

	public function handleDragEndEvent(e:DragEvent, wasValidDrop:Boolean) : void;

	public function setState(state:String) : void;

}