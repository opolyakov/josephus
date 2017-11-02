package main

import "flag"
import "fmt"
import "os"

func main() {

nPtr := flag.Int("n",0,"elements number")
kPtr := flag.Int("k",0,"step number")

flag.Parse()

if *nPtr<=0 || *kPtr<=0 { 
	fmt.Println("Arguments should be positive integers")
	os.Exit(1)
}

// Create zeroed array
arr := make([]int, *nPtr, *nPtr)

// Process

for i,j,count := 0,1,*nPtr ; count > 1 ; i,j = i+1,j+1  {
	// At the end of array - go to beginning
	if i == *nPtr {
		i = 0
	}
	// If element is tagged, step over
	for arr[i]==1 {
		i++
		// At the end of array - go to beginning
		if i == *nPtr {
			i = 0
		}
	}
	// Tag POI with 1, restart j, decrement count
	if j == *kPtr {
		arr[i] = 1
		j = 0
		count--
	}
}
//  Find untagged array element
i := 0
for ; arr[i] == 1; i++  {}

	fmt.Println(i+1)

}
