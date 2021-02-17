@isTest(SeeAllData=true)
public class RHX_TEST_KCPQ_Location {
	static testMethod void RHX_Testmethod() {
        List<sObject> sourceList = [SELECT Id 
			FROM KCPQ_Location__c LIMIT 1];
        if(sourceList.size() == 0) {
            sourceList.add(
                    new KCPQ_Location__c()
            );
        }
    	rh2.ParentUtil.UpsertRollupTestRecords( sourceList );
    }
}