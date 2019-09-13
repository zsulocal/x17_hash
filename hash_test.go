package x17_hash

import (
	"encoding/hex"
	"fmt"
	"testing"
)

func TestX7(t *testing.T) {
	hash := "04180000b4a5c4b7517894bc8ab33bfe37ede3369829f73c79748e1146aafd7a997a91dc96a4e565073f7c8addedcb92b3b9f9a2ece5f142474df6acc61f92e554641e349e2d7b5dedd2021b1db90f7d"
	hash_bin, _ := hex.DecodeString(hash)
	powhash := GetPowHash(hash_bin)
	powhash_hex := hex.EncodeToString(powhash)
	fmt.Println(powhash_hex)
	if powhash_hex != "b759fa4a3b86c974898422508b5f4897364088b577353f0f0617010000000000" {
		t.Error("Test x7 powhash failed")
		return
	}
}
