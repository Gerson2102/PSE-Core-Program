pragma circom  2.1.9;

template Multiplier() {
    signal input a;
    signal input b;
    signal output c;
    c <== a * b;
}

template Multiplier_V2() {
    signal input a;
    signal input b;
    signal input c;
    signal intermediate;
    signal output result;
    intermediate <== a * b; // In Circom we cant multiply three times in a row.
    result <== intermediate * c;
}

template Addition() {
    signal input a;
    signal input b;
    signal output result;
    result <== a + b;
}

// component main = Multiplier();
// component main = Addition();
component main = Multiplier_V2();