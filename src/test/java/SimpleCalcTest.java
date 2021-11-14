import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class SimpleCalcTest {
    Calculator calculator;

    @BeforeEach
    void setUp() {
        calculator = new Calculator();
    }

    @Test
    @DisplayName("Simple multiplication")
    void testMultiply() {
        assertEquals(20, calculator.multiply(5, 4));
    }

    @Test
    @DisplayName("Simple summarization")
    void testSum() {
        assertEquals(9, calculator.sum(5, 4));
    }
}
