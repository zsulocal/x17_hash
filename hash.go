package x17_hash

// #cgo CFLAGS: -I.
// #cgo LDFLAGS: -L. -lx17_hash
// #include "x17.h"
import "C"

import (
	"unsafe"
)

func GetPowHash(hash []byte) []byte {
	powhash := make([]byte, 32)
	C.x17_hash((*C.char)(unsafe.Pointer(&hash[0])), (*C.char)(unsafe.Pointer(&powhash[0])))
	return powhash
}
