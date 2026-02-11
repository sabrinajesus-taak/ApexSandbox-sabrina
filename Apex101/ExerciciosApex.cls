public class ExerciciosApex {

    public Boolean isTeenager(Integer age) {
    return age >= 13 && age <= 19;
    }

    public Integer diff(Integer a, Integer b) {
        if (a > b) {
            return a - b;
        } else {
            return b - a;
        }   
    } 
    
    public Boolean sumEquals(Integer a, Integer b, Integer c) {
        Integer soma = a + b;
        if (soma == c) {
            return true;
        } else {
            return false;
        }
    }

    public Boolean ascendingOrder(Integer a, Integer b, Integer c) {
        if (c >= b && b >= a) {
            return true;
        } else{
            return false;
        }
    }

    public String aOrAn(String word) {
        if (word.startsWith('a') || word.startsWith('e') || word.startsWith('i') || word.startsWith('o') || word.startsWith('u') ) {
            return 'an ' + word;
        } else {
            return 'a ' + word;
        }
    }

    public static Integer findLargest(Integer num1, Integer num2, Integer num3) {
	    if (num1 > num2 && num1 > num3) {
            return num1;
        } else if (num2 > num3) {
            return num2;
        } else {
            return num3;
        }
    }
}