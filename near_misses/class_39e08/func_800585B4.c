// NEAR MISS: complex nested loops with D_80087BD4 table lookups
// 2D loop: t1<4 outer, a3<t2 inner, compares table[j] vs arg1->0x18
// Sets bytes in arg0->0x240 buffer, returns 0/1
// Too complex to match without exact C structure
void func_800585B4(void) {
    // nested loops + D_80087BD4 table + byte writes to arg0->0x240
}
