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

### Symmetric vs Asymmetric Encryption (AES, RSA) Questions

   1. What is the primary difference between symmetric and asymmetric encryption?
   2. Can you briefly explain how AES (Advanced Encryption Standard) works?
   3. What makes RSA a popular choice for public-key encryption?

### Answers at the end of the module

1. **Write a circuit to prove input to hash:** hashOutput = 4267533774488295900887461483015112262021273608761099826938271132511348470966