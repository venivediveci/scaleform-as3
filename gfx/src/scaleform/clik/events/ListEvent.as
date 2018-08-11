import flash.events.Event;
import scaleform.clik.controls.Button;
import scaleform.clik.interfaces.IListItemRenderer;
/**
 *  Event structure and defintions for the CLIK ScrollingList: 
 *  Valid types:
 *      ITEM_CLICK - "indexChange"
 *      ITEM_PRESS - "itemPress"
 *      ITEM_ROLL_OVER - "itemRollOver"
 *      ITEM_ROLL_OUT - "itemRollOut"
 *      ITEM_DOUBLE_CLICK - "itemDoubleClick"
 *      INDEX_CHANGE - "indexChange"
 */
intrinsic class scaleform.clik.events.ListEvent extends Event
{
	/** A reference to the related IListItemRenderer. */
	public var itemRenderer : IListItemRenderer;
	/** The data associated with the related IListItemRenderer. */
	public var itemData : Object;
	/** The index of the related IListItemRenderer relative to the List. */
	public var index : int;
	/** The column index of the related IListItemRenderer. */
	public var columnIndex : int;
	/** The row index of the related IListItemRenderer.*/
	public var rowIndex : int;
	/** The index of the controller/mouse used to generate the event (applicable only for multi-mouse cursor environments). */
	public var controllerIdx : uint;
	/** The index of the button on the controller/mouse used to generate the event. */
	public var buttonIdx : uint;
	/** true if the event was generated by keyboard or gamepad input; false otherwise. */
	public var isKeyboard : Boolean;
	static public var ITEM_CLICK : String;
	static public var ITEM_PRESS : String;
	static public var ITEM_ROLL_OVER : String;
	static public var ITEM_ROLL_OUT : String;
	static public var ITEM_DOUBLE_CLICK : String;
	static public var INDEX_CHANGE : String;

	public function ListEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = true, index:int = -1, columnIndex:int = -1, rowIndex:int = -1, itemRenderer:IListItemRenderer = null, itemData:Object = null, controllerIdx:uint = 0, buttonIdx:uint = 0, isKeyboard:Boolean = false);

	public function clone() : Event;

	public function toString() : String;

}