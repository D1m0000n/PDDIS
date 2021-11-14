import junit.framework.TestCase;

public class SimpleCalcTest extends TestCase {
    Calculator calc;

    public void testSum() {
        calc = new Calculator();
        assertEquals(4, calc.sum(2, 2));
    }

    public void testMult() {
        calc = new Calculator();
        assertEquals(4, calc.multiply(2, 2));
    }
}