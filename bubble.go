/*
        bubble.go
	(c) 2017 Jeroen Petrus Broks.
	
	This Source Code Form is subject to the terms of the 
	Mozilla Public License, v. 2.0. If a copy of the MPL was not 
	distributed with this file, You can obtain one at 
	http://mozilla.org/MPL/2.0/.
        Version: 17.12.24
*/
package main

import(
//	"github.com/jpbubble/Base"
	"github.com/jpbubble/game"
	// jcr6 drivers
_	"trickyunits/jcr6/jcr6zlib"
_	"trickyunits/jcr6/jcr6lzma"
_	"trickyunits/jcr6/jcr6flate"
_	"trickyunits/jcr6/jcr6realdir"
)

func main(){
	 bubblegame.EngineName = "BUBBLE"
	 bubblegame.InitBubble()
	 bubblegame.Run()
	 //bubble.Fatal("Test error") // debug line
	 bubblegame.Crash() // always must be used after an InitBubble is called. 
}
