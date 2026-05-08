namespace QuantumRandomNumberGenerator {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    operation GenerateRandomBits(n : Int) : Result[] {
        use qubits = Qubit[n];
        ApplyToEach(H, qubits);
        let results = MeasureEachZ(qubits);
        ResetAll(qubits);
        return results;
    }

    @EntryPoint()
    operation Main() : Result[] {
        let numBits = 2;
        return GenerateRandomBits(numBits);
    }
}
