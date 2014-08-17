package components
{
	import com.adobe.crypto.MD5;
	
	import flash.errors.IOError;
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.utils.Dictionary;
	
	public class ImageCacheManager
	{
		private static const imageDir:File = File.applicationStorageDirectory.resolvePath("cachedimages/");
		private static var instance:ImageCacheManager;
		private var pendingDictionaryByLoader:Dictionary = new Dictionary();
		private var pendingDictionaryByURL:Dictionary = new Dictionary();
		public function ImageCacheManager()
		{
		}
		public static function getInstance():ImageCacheManager
        {
            if (instance == null)
            {
                instance = new ImageCacheManager();
            }

            return instance;
        }
		public function getImageByURL(url:String):String{
			
			var cacheFile:File = new File(imageDir.nativePath +File.separator+ cleanURLString(url));
			if(cacheFile.exists){
				return cacheFile.url;
			} else {
				try {
					addImageToCache(url);
				}
				catch(e:IOError)
				{
					trace("Invalid url:" + url);
				}
				return url;
			}
			
		}
		private  function addImageToCache(url:String):void{
			if(!pendingDictionaryByURL[url]){
				var req:URLRequest = new URLRequest(url);
				var loader:URLLoader = new URLLoader();
				loader.addEventListener(Event.COMPLETE,imageLoadComplete);
				loader.dataFormat = URLLoaderDataFormat.BINARY;
				loader.load(req);
				pendingDictionaryByLoader[loader] = url;
				pendingDictionaryByURL[url] = true;
			} 
		}
		private function imageLoadComplete(event:Event):void{
			var loader:URLLoader = event.target as URLLoader;
			var url:String = pendingDictionaryByLoader[loader];
			var cacheFile:File = new File(imageDir.nativePath +File.separator+ cleanURLString(url));
			var stream:FileStream = new FileStream();
			stream.open(cacheFile,FileMode.WRITE);
			stream.writeBytes(loader.data);
			stream.close();
			delete pendingDictionaryByLoader[loader]
			delete pendingDictionaryByURL[url];
		}
		private function cleanURLString(url:String):String{
			var hash:String = MD5.hash(url);
			return hash;
		}
		
	}
}