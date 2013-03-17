package{
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
 
	public class Main extends MovieClip
	{
 
		private var preloader:Preloader;
 
		public function Main()
		{
			preloader = new Preloader(580, this.loaderInfo);
			stage.addChild(preloader);
			preloader.addEventListener("loadComplete", loadAssets);
			preloader.addEventListener("preloaderFinished", showSponsors);
		}
 
		private function loadAssets(e:Event) : void
		{
			this.play();
		}
 
		private function showSponsors(e:Event) : void
		{
			stage.removeChild(preloader);
			trace("show sponsors");
		}
 
	}
}