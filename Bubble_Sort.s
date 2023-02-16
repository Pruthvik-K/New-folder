#5.4
.data
arr:.word 25,56,0,10,20
.text

la x5,arr
 



li x6,4 #max in loop1
li x7,0 #curr in loop1

loop1:
    
    addi x8,x5,0
    li x9,16 #max in loop2
    li x10,0 #curr in loop2

    loop2:
        add x11,x8,x10
        addi x12,x11,4
        
        lw x13,0(x11)
        lw x14,0(x12)
        
        blt x13,x14,skip
        sw x13,0(x12)
        sw x14,0(x11)
        
        skip:
         addi x10,x10,4
         blt x10,x9,loop2
     
        
    addi x7,x7,1
    blt x7,x6,loop1