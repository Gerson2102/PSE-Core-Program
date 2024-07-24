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

   1. **What is the primary difference between symmetric and asymmetric encryption?**: Symmetric encryption we only use one public key to encrypt and decrypt data. Asymetric encryption we use a public and private key to encrypt and decrypt the data, which makes it more secure.

   2. **Can you briefly explain how AES (Advanced Encryption Standard) works?:** The Advanced Encryption Standard take plaintext as an input. That plaintext is put it into a grid of 4x4. We apply an XOR operation to this plaintext, a substitution and permutation. These process is a round. We can have 10, 12, 14 rounds depending on the size of the plaintext. (128, 192, 256)

   3. **What makes RSA a popular choice for public-key encryption?**: The ability to exchange encrypted messages during communication without worrying if somebody can intercept the interaction.

### Hash Functions, Merkle Trees Questions

   1. **What is a hash function and what are its primary uses in cryptography?**: A hash function is a function that takes an input and returns a fixed-size string of bytes. Its primary uses in data integrity, digital signatures, ZKPs, blockchain and crypto, among others.

   2. **How does the SHA-256 hashing algorithm function, in simple terms?**: The SHA-256 hashing method takes an input and is divided in a series of mathematical operations. It divides the input and applies 64 rounds of operations.

   3. **What is the Poseidon hash function and why is it particularly useful in ZKPs?**: Poseidon is a cryptographic hash function specifically designed to be efficient in zero-knowledge proofs (ZKPs). Is particularly useful in ZKPs because is much faster adn cheaper than SHA-256. When SHA-256 was implemented in Zcash it took one minute for proofs.


### Answers at the end of the module

1. **Write a circuit to prove input to hash:** hashOutput = 4267533774488295900887461483015112262021273608761099826938271132511348470966