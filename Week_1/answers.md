### Circom programs

1. Proving a multiplication of two numbers: 

    ```rust
    pragma circom  2.1.9;

    template Multiplier() {
        signal input a;
        signal input b;
        signal output c;
        c <== a * b;
    }

    component main = Multiplier();
    ```

1. Proving an addition:

    ```rust
    pragma circom  2.1.9;

    template Addition() {
        signal input a;
        signal input b;
        signal output result;
        result <== a + b;
    }

    component main = Addition();
    ```

1. Proving a multiplication of three numbers:

    ```rust
    pragma circom  2.1.9;

    template Multiplier_V2() {
        signal input a;
        signal input b;
        signal input c;
        signal intermediate;
        signal output result;
        intermediate <== a * b; // In Circom we cant multiply three times in a row.
        result <== intermediate * c;
    }

    component main = Multiplier_V2();
    ```