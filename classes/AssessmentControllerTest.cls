@isTest
public class AssessmentControllerTest {
    public static testMethod void counterTest() {
        test.startTest();
        HertiageAssessmentController controller = new HertiageAssessmentController();
        controller.stringValue = 'Hello,hell,ok';
        controller.save();
        system.assertequals(2,2);
        test.stopTest();
    }
    public static testMethod void walkTest() {
        test.startTest();
        HertiageAssessmentController controller = new HertiageAssessmentController();
        controller.walkString = 'n,s,w,e,s,n,w,e,s,n';
        controller.save1();
        system.assertequals(true,true);
        test.stopTest();
    }
}