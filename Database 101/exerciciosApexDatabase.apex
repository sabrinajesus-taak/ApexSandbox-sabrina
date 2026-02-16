public class exerciciosApexSandboxDatabase {
    // inset student
    public Id insertStudent(String name, String email) {
        apxio__Student__c aluno = new apxio__Student__c();

        aluno.Name = name;
        aluno.apxio__Email__c = email;

        insert aluno;

        return aluno.Id;
    }

    // inseert course
    public Id insertCourse(String name, String details, Integer credits) {
        apxio__Course__c course = new apxio__Course__c();

        course.Name = name;
        course.apxio__Course_Details__c = details;
        String novo_credtis = String.valueOf(credits);

        if (novo_credtis == '0' || novo_credtis == '1' || novo_credtis == '2' || novo_credtis == '3' || novo_credtis == '4') {
            course.apxio__Credits__c = novo_credtis;
        } else {
            return null;
        }

        insert course;
        return course.Id;
    }

    // register student
    public String registerStudent(String name, String phone, String email) {
        apxio__Student__c registro = new apxio__Student__c();

        registro.Name = name;
        registro.apxio__Phone__c = phone;
        registro.apxio__Email__c = email;

        insert registro;
        apxio__Student__c busca = [select apxio__Registration_Number__c from apxio__Student__c where Id = :registro.Id];
        return busca.apxio__Registration_Number__c;
    }

    // active student
    public List<apxio__Student__c> selectActiveStudents() {
        List<apxio__Student__c> students = [
            select Id, Name
            from apxio__Student__c
            where apxio__Active__c = true
            and Name != null
        ];
        return students;
    }
}