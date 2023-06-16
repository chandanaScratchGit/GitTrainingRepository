public class AccountDemo {
    public Account accObj{get;set;}
    public List<Account> acclist{get;set;}
    
    public AccountDemo(ApexPages.StandardController Controller){
        accObj = new Account();
        acclist = new List<Account>();
        acclist = [Select Id,Name,Phone,Industry,Rating,Description from Account LIMIT 10];
    }
    
    public Pagereference createAccRecord(){
        insert accObj;
        return new Pagereference('/' +accObj.Id);
    }
}