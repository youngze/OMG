			
	
			var zc = document.getElementById("zc");
			var an_dl = document.getElementById("an_dl");
			var close_all = document.getElementById("close_all");
			var close_all_login = document.getElementById("close_all_login");		
			var mask = document.getElementById("mask");
			var my_zc = document.getElementById("my_zc");
			$("zc").onclick = function(){
				$("mask").style.display = "block";
				$("my_zc").style.display = "block";
			}

			$("close_all").onclick = function(){
				$("mask").style.display = "none";
				$("my_zc").style.display = "none";
			}
			$("an_dl").onclick = function(){
				$("mask").style.display = "block";
				$("my_dl").style.display = "block";
			}
			$("close_all_login").onclick = function(){
				$("mask").style.display = "none";
				$("my_dl").style.display = "none";
			}
