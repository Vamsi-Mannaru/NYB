Function sumUpto(n) { 

    if  (n<=1) { 
    
    return n;   
    
    } 
    
    return  n+ sumUpto,(n=1); 
    
    } 
    
    console.log(sumUpto(5)); 