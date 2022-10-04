public with sharing class HertiageAssessmentController {

    public String walkString { get; set; }
    public String stringValue { get; set; }
    public Integer counter {get; set;}
    public Boolean check {get; set;}
    
    public PageReference save() {
    counter = 0;
    String[] wordList = stringValue.split(',');
    system.debug('wordList: '+wordList);
        if(wordlist.size() > 0){
            for(integer i=0;i<wordlist.size();i++){
                string[] temparray = wordlist[i].split('');
                  for(integer j=0,k=j+1;j<wordlist[i].length() && k<wordlist[i].length();){
                   if(temparray[j] == temparray[k]){
                       counter+=1;
                       break;
                   }else{
                       if(k+1 < wordlist[i].length()){
                           k++;
                           }
                      else{
                           j++;
                           k=j+1;
                       }
                   
                   }
               }
            
       }             system.debug('counter:'+counter);

        }
        return null;
    }
    
    public PageReference save1() {
   
        String[] walkList = walkstring.split(',');
        system.debug('walklist: '+walklist);
        if( walkList.size() > 0){
            
            //increment for n and w; decrement for s and e
            integer ns=0;
            integer we=0;
            if(walkList.size() != 10){
                check = false;
            }
            for(integer i=0;i<walkList.size();i++){
                if(walkList[i] == 'n'){
                    ns+=1;
                }
                else if(walkList[i] == 's'){
                    ns-=1;
                }
                else if(walkList[i] == 'w'){
                    we +=1;
                }
                else{
                    we-=1;
                }

             }

                if(ns == 0 && we == 0){
                    check= true;
                }
                else{
                check= false;
            }
        }
        return null;
        }

}