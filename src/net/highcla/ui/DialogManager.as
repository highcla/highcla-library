package net.highcla.ui {
	/**
	 * @author claudio
	 */
	public class DialogManager 
	{
		private static var _instance:DialogManager;
		
		public static function getInstance():DialogManager
		{
			if(!_instance)
				_instance=new DialogManager(Lock);
				
			return _instance;	
		}
		
		public function DialogManager(lock:Class)
		{
			if(lock!=Lock)
				throw new Error("DialogManager - Use getInstance() method.");
		}
	}
}

class Lock{}
