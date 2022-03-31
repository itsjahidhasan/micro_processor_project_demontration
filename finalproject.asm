.model small
.stack 100h
.data
;welcome msg
 wel db 10,13,"               --------------------------------------------------"
wel1 db 10,13,"               |                                                |"
wel2 db 10,13,"               |       Welcome to Safe Digonistic Center        |"
wel3 db 10,13,"               |                                                |"
wel4 db 10,13,"               -------------------------------------------------- $" 
;Thank you msg
 thank db 10,13,"        -----------------------------------------------------------"
thank1 db 10,13,"        |                                                         |"
thank2 db 10,13,"        |       Thank you for using Safe Digonistic Center        |"
thank3 db 10,13,"        |                                                         |"
thank4 db 10,13,"        ----------------------------------------------------------- $"

needtopay db 10,13,"Total Payment:$"
howtopay db 10,13,"How would you like to pay?",10,13,"1.Bkash",10,13,"2.Roket",10,13,"3.Card",10,13,"4.Cash$"
paid db 10,13,"All your due payment is completed.$"
notpaid db 10,13,"Transaction incomplete.try again!$"
chosseopt db 10,13,"Chose a option from above:$"
     
;signup login variable
a db 10,13,"**************Signup************ $"
b db 10,13,"Username: $"
c db 10,13,"NID No: $" 
d db 10,13,"Password: $" 
new_here db 10,13,"Are you new here?(y/n) $" 
msg db 10,13,"Username: $" 
invalid_username db 10,13,"Invalid username$"
msg2 db 10,13,"Password: $"
invalid_pass db 10,13,"Invalid password$"
f db 10,13,"*********USER LOGIN*********$" 
accept db 10,13,"     ************************ LOGIN SUCCESSFUL ********************** $"
username1 db ?
username2 db ?
username3 db ?
username4 db ?
username5 db ?

password1 db ? 
password2 db ?
password3 db ?
password4 db ?
password5 db ?
password6 db ?
password7 db ?

nidnum1 db ?   
nidnum2 db ?
nidnum3 db ?
nidnum4 db ?
nidnum5 db ?
nidnum6 db ?
nidnum7 db ?
nidnum8 db ?
nidnum9 db ?
nidnum10 db ?   

billingrecipt db 10,13,10,13,"Bill Receipt$"
testaskingmsg db 10,13,10,13,"What you want to test?",10,13,"1.Covid-19 health Checkup",10,13,"2.Others test$"
askingmore db 10,13,"Do you want to test more?(y/n)$"
;covid test variable
statusa db 10,13,'       ********************************************************** $'   
statusb db 10,13, '           Find out your health stability(covid)!!  $'
statusc db 10,13, '        For each question, enter y if you have the symptom $' 
statusd db 10,13, 'start?(y/n) $'
statuse db 10,13, ' Are you suffering from fever?(y/n) $'  
statusf db 10,13, ' Are you snoring (y/n) $'  
statusg db 10,13, ' Are you coughing (y/n) $' 
statush db 10,13, ' Are you suffering from dysentery (y/n) $ '  
statusi db 10,13, ' You health status is excellent. Stay home,Stay Safe $ ' 
statusj db 10,13, ' Your health status isnot alarming, but contact with an certified physician and take proper medicines $ '
statusk db 10,13, ' your health status isnot so good. Covid test is mandatory $ ' 
statusl db 10,13, ' Your health condition is worst. Covid test needed  $ ' 
statusm db 10,13, ' Your symtoms matches with covid. Please imidiately get yourself admitted in hospital $ ' 
;other test variable
billing_a db 10,13,'       ********************************************************** $'   
billing_b db 10,13, '           Complete your required tests!!  $'
billing_c db 10,13, '        For each question, enter y if you want to test $' 
billing_d db 10,13, 'Do you want to test?(y/n) $'
billing_e db 10,13, 'Do you want to see the test chart?(y/n) $' 
billing_f db 10,13, ' 1.Blood test->   1tk ',10,13,' 2.Urine test->   1tk ',10,13,' 3.Covid test->   2tk ',10,13,' 4.X-Ray->        1tk ',10,13,' 5.CT->           2tk ',10,13,' 6.CMP->          1tk ',10,13,' 7.Dengue tset->  1tk',10,13,'Proceed next?(y/n) $'
billing_g db 10,13, 'How many test you want?(1-7) $'         
billing_h db 10,13, 'Mention the name of the test number. $' 
billing_i db 10,13, 'Total bill. $ '
optionError db 10,13, 'You have entered a wrong option.try again!$'    
opterr1 db 10,13, 'You have selected out of option$'
totalbillmsg db 10,13, 'Total bill: $'
billing_myvar DW ?
totalbill db ?  
unit db "TK$"
.code
main proc
    mov ax,@data
    mov ds,ax
;welcome msg print  
    mov ah,9
    lea dx,wel
    int 21h 
;login signup code START            
    asking:
    
    mov ah,9
    lea dx,new_here
    int 21h 
    
    mov ah,1
    int 21h
    
    cmp al,'y'
    jne login
    jmp register
    
    login:
    ;password
     pop bx
    mov password7,bl 
    
    pop bx
    mov password6,bl
    
    pop bx
    mov password5,bl
    
    pop bx
    mov password4,bl
    
    pop bx
    mov password3,bl
    
    pop bx
    mov password2,bl
    
    pop bx
    mov password1,bl
    ;nid number  
    pop bx
    mov nidnum10,bl 
    pop bx
    mov nidnum9,bl
    pop bx
    mov nidnum8,bl
    pop bx
    mov nidnum7,bl
    pop bx
    mov nidnum6,bl
    pop bx
    mov nidnum5,bl
    pop bx
    mov nidnum4,bl
    pop bx
    mov nidnum3,bl
    pop bx
    mov nidnum2,bl
    pop bx
    mov nidnum1,bl
    ;name
    pop bx 
    mov username5,bl 
    pop bx 
    mov username4,bl
    pop bx 
    mov username3,bl
    pop bx 
    mov username2,bl
    pop bx 
    mov username1,bl
    
    mov ah,9
    lea dx,f
    int 21h  
    l:
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    mov bl,username1    
    cmp al,bl
    jne e  
     
    mov ah,1
    int 21h 
    mov bl,username2
    cmp al,bl
    jne e
    
    mov ah,1
    int 21h
    mov bl,username3
    cmp al,bl
    jne e
    
    mov ah,1
    int 21h
    mov bl,username4
    cmp al,bl
    jne e        
    
    mov ah,1
    int 21h
    mov bl,username5
    cmp al,bl
    jne e
    l2:
    lea dx,msg2
    mov ah,09
    int 21h  
    
    mov ah,1
    int 21h
    mov bl,password1    
    cmp al,bl
    jne e1 
    
    mov ah,1
    int 21h
    mov bl,password2    
    cmp al,bl
    jne e1 
    
    mov ah,1
    int 21h
    mov bl,password3    
    cmp al,bl
    jne e1 
    
    mov ah,1
    int 21h
    mov bl,password4    
    cmp al,bl
    jne e1 
    
    mov ah,1
    int 21h
    mov bl,password5    
    cmp al,bl
    jne e1 
    
    mov ah,1
    int 21h
    mov bl,password6    
    cmp al,bl
    jne e1 
    
    mov ah,1
    int 21h
    mov bl,password7    
    cmp al,bl
    jne e1 
    
    jmp se_msg
    
    
    e:
    mov ah,09
    lea dx,invalid_username
    int 21h 
    jmp l
    e1:
    mov ah,09
    lea dx,invalid_pass
    int 21h 
    
    jmp l2         
    
    register:
    
    mov ah,9
    lea dx,a
    int 21h 
    
    ;name
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    push ax  
    
    mov ah,1
    int 21h
    push ax 
    
    mov ah,1
    int 21h
    push ax 
    
    mov ah,1
    int 21h
    push ax 
    
    mov ah,1
    int 21h
    push ax 
    
    ;NID number         
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,1
    int 21h
    push ax  
    
    mov ah,1
    int 21h
    push ax
    
    mov ah,1
    int 21h
    push ax 
    
    mov ah,1
    int 21h
    push ax 
    
    mov ah,1
    int 21h
    push ax 
    
    mov ah,1
    int 21h
    push ax 
    
    mov ah,1
    int 21h
    push ax 
    
    mov ah,1
    int 21h
    push ax 
    
    
    mov ah,1
    int 21h
    push ax 
    
    mov ah,1
    int 21h
    push ax         
    ;password
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,1
    int 21h
    push ax  
    
    mov ah,1
    int 21h
    push ax
    
    mov ah,1
    int 21h
    push ax
    
    mov ah,1
    int 21h
    push ax
    
    mov ah,1
    int 21h
    push ax
    
    mov ah,1
    int 21h
    push ax
    
    mov ah,1
    int 21h
    push ax
    
    
    
    jmp login
    
    se_msg: 
    
    mov ah,09
    lea dx,accept
    int 21h 
    
    jmp AskingTestOption
;login signup code END
AskingTestOption: 
    mov ah,09
    lea dx,testaskingmsg
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h 
    
    cmp al,'1'
    je covidStart
    jmp secondopt
    
secondopt:
    cmp al,'2'
    je Digonistic
        
;covid-19 test code START
covidStart:
    ; Message to the User
    mov ah,9
    lea dx,statusa
    int 21h   
    
    
    
  ; Message to the User
    mov ah,9
    lea dx,statusa
    int 21h 
   
    mov ah,9
    lea dx,statusb
    int 21h 
    
    mov ah,9
    lea dx,statusc
    int 21h 
        
    mov ah,9
    lea dx,statusa
    int 21h 
   
   
    mov ah,9
    lea dx,statusd
    int 21h
    
start: 
   
    mov ah,1
    int 21h
    mov cl,al
    
    cmp cl,'y'
    je next1
    cmp cl,'Y'
    je next1
    
    
    cmp cl,'n'
    je exit
    cmp cl,'N'
    je exit
    
next1:
 
    mov ah,9
    lea dx,statuse
    int 21h 
    
    sub cl,cl
    
     
    mov ah,1
    int 21h
    mov cl,al  
    
    cmp cl,'y'
    je snxt1
    
    cmp cl,'n'
    je nsnxt1
     
snxt1:
       
    mov bl,50
    
    
    jmp next2  
    
nsnxt1:

    mov bl, 48
    
    jmp next2
    
next2:
 
    mov ah,9
    lea dx,statusf
    int 21h 
    
     
    mov ah,1
    int 21h
    mov cl,al  
    
    cmp cl,'y'
    je snxt2
  
    cmp cl,'n'
    je nsnxt2
   
snxt2:
        
    mov bh,50 
    
    add bl,bh
    sub bl,48
        
    jmp next3
        
nsnxt2:
    
    sub bh,bh
    mov bh, 48 
         
    add bl,bh
    sub bl,48
    jmp next3
               
next3:
 
    mov ah,9
    lea dx,statusg
    int 21h 
    
    sub cl,cl
     
    mov ah,1
    int 21h
    mov cl,al  
    
    cmp cl,'y'
    je snxt3
    
    
    cmp cl,'n'
    je nsnxt3
    
snxt3:
    
    sub bh,bh
    mov bh,50 
    
    add bl,bh
    sub bl,48
        
    jmp next4

nsnxt3:
    
    sub bh,bh
    mov bh, 48 
        
    add bl,bh
    sub bl,48
    jmp next4
           
next4:
 
    mov ah,9
    lea dx,statush
    int 21h 
    
    sub cl,cl
     
    mov ah,1
    int 21h
    mov cl,al  
    
    cmp cl,'y'
    je snxt4
    
    cmp cl,'n'
    je nsnxt4
    
snxt4:
    
    sub bh,bh
    mov bh,50 
    
    add bl,bh
    sub bl,48
    
    jmp output
            
nsnxt4:
    
    sub bh,bh
    mov bh, 48 
       
    add bl,bh
    sub bl,48
    
    jmp output       
        
output:
  
  cmp bl,48 

  je status1

  cmp bl,50

  je status2
 
  cmp bl,52

  je status3

  cmp bl,54

  je status4 

  cmp bl,56

  je status5     

status1: 

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    lea dx,statusi
    int 21h  
    
    jmp beforeExit 

status2:

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    lea dx,statusj
    int 21h
    
      
    jmp beforeExit 

status3:

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    lea dx,statusk
    int 21h 
    
    jmp beforeExit    
    
    
status4:   

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    lea dx,statusl
    int 21h 
               
    jmp beforeExit  
                  
status5:   

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    lea dx,statusm
    int 21h 

    jmp beforeExit

;covid-19 test code END 
;Digonistic test code START
Digonistic:
     ; Message to the User
    mov ah,9
    lea dx,billing_a
    int 21h   

    ;Message to the User
    mov ah,9
    lea dx,billing_a
    int 21h 

    mov ah,9
    lea dx,billing_b
    int 21h 

    mov ah,9
    lea dx,billing_c
    int 21h 


    mov ah,9
    lea dx,billing_a
    int 21h 


    mov ah,9
    lea dx,billing_d
    int 21h

billing_start: 

    mov ah,1
    int 21h
    mov cl,al       

    cmp cl,'y'
    je billing_next1
    cmp cl,'Y'
    je billing_next1


    cmp cl,'n'
    je exit
    cmp cl,'N'
    je exit

billing_next1:

    mov ah,9
    lea dx,billing_e    ;displaying message
    int 21h 

    sub cx,cx


    mov ah,1
    int 21h
    mov cl,al  

    cmp cl,'y'
    je billing_next2

    cmp cl,'n'
    je exit

billing_next2:

    mov ah,9
    lea dx,billing_f               ;displaying message
    int 21h 

    mov ah,1
    int 21h
    mov cl,al  

    cmp cl,'y'
    je billing_next3


    cmp cl,'n'
    je exit


billing_next3:

    mov ah,9
    lea dx,billing_g
    int 21h 

    sub cx,cx
 
 
 
    optionChecker:  
    mov ah,1
    int 21h

    cmp al,'1'
    je op1 
    jmp check1

    check1:
    cmp al,'2'
    je op2
    jmp check2

    check2:
    cmp al,'3'
    je op3
    jmp check3

    check3:
    cmp al,'4'
    je op4
    jmp check4   

    check4:
    cmp al,'5'
    je op5 
    jmp check5   

    check5:
    cmp al,'6'
    je op6 
    jmp check6   
    
    check6:
    cmp al,'7'
    je op7 
    jmp check7

    check7:
    mov ah,9
    lea dx,optionError
    int 21h 
    jmp optionChecker


    op1:
    mov cl,1     ;intializing loop with user input
    jmp makigblzero 
    op2:          
    mov cl,2
    jmp makigblzero 
    op3:
    mov cl,3    
    jmp makigblzero 
    op4:
    mov cl,4    
    jmp makigblzero 
    op5:
    mov cl,5    
    jmp makigblzero 
    op6:
    mov cl,6    
    jmp makigblzero 
    
    op7:
    mov cl,7    
    jmp makigblzero
makigblzero:
    sub bl,bl
    jmp start23
start23:
     
     mov ah,9
     lea dx,billing_h
     int 21h

     mov ah,1
     int 21h
     
     cmp al,'1'
     je addmoney1 
     jmp optn1  
optn1:     
     cmp al,'2'
     je addmoney2 
     jmp optn2 
optn2:     
     cmp al,'3'
     je addmoney3 
     jmp optn3 
optn3:     
     cmp al,'4'
     je addmoney4 
     jmp optn4 
optn4:     
     cmp al,'5'
     je addmoney5 
     jmp optn5 
optn5:     
     cmp al,'6'
     je addmoney6 
     jmp optn6 
optn6:     
     cmp al,'7'
     je addmoney7 
     jmp opterror23    
     
opterror23:
     mov ah,9
     lea dx,opterr1
     int 21h
addmoney1:
     add bl,49
     sub bl,48      
     jmp loopstart_h
addmoney2:
     add bl,49
     sub bl,48      
     jmp loopstart_h
addmoney3:
     add bl,50
     sub bl,48      
     jmp loopstart_h
addmoney4:
     add bl,49
     sub bl,48
     jmp loopstart_h
addmoney5:
     add bl,50
     sub bl,48
     jmp loopstart_h
addmoney6:
     add bl,49
     sub bl,48
     jmp loopstart_h
addmoney7:
     add bl,49
     sub bl,48
     jmp loopstart_h
loopstart_h:                                        
    loop start23 
    add bl,48
    mov totalbill,bl
    
    mov ah,9
    lea dx,totalbillmsg
    int 21h
    
    
    sub dh,dh
    mov ah,2
    mov dl,totalbill
    int 21h 
    
    mov ah,9
    lea dx,unit
    int 21h
    

    jmp beforeExit
;Digonistic test code END  
beforeExit:
    mov ah,9
    lea dx,askingmore
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,'y'
    je  AskingTestOption
    jmp billpaper
billpaper:
    mov ah,9
    lea dx,billingrecipt
    int 21h 
    ;user name print
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,username1
    int 21h 
    mov ah,2
    mov dl,username2
    int 21h
    mov ah,2
    mov dl,username3
    int 21h
    mov ah,2
    mov dl,username4
    int 21h
    mov ah,2
    mov dl,username5
    int 21h 
    
    ;nid number printing
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    mov dl,nidnum1
    int 21h 
    
    mov ah,2
    mov dl,nidnum2
    int 21h
    
    mov ah,2
    mov dl,nidnum3
    int 21h
    
    mov ah,2
    mov dl,nidnum4
    int 21h
    
    mov ah,2
    mov dl,nidnum5
    int 21h
    
    mov ah,2
    mov dl,nidnum6
    int 21h
    
    mov ah,2
    mov dl,nidnum7
    int 21h
    
    mov ah,2
    mov dl,nidnum8
    int 21h
    
    mov ah,2
    mov dl,nidnum9
    int 21h
    
    mov ah,2
    mov dl,nidnum10
    int 21h
    
    mov ah,9
    lea dx,needtopay
    int 21h
    
    mov ah,2
    mov dl,totalbill
    int 21h 
paymentselect:    
    mov ah,9
    lea dx,howtopay
    int 21h
     
    mov ah,9
    lea dx,chosseopt
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'1'
    je paymentpaid 
    jmp payopt2 
payopt2:    
    
    cmp al,'2'
    je paymentpaid 
    jmp payopt3 
payopt3:     
    
    cmp al,'3'
    je paymentpaid
    jmp payopt4
payopt4:              
   
    cmp al,'4'
    je paymentpaid  
    jmp paymentnotpaid        
paymentpaid:
    mov ah,9
    lea dx,paid
    int 21h
    jmp thankyou 
paymentnotpaid:
    mov ah,9
    lea dx,notpaid
    int 21h
    jmp paymentselect    
        
thankyou:
    ;welcome msg print  
    mov ah,9
    lea dx,thank
    int 21h
    jmp exit         
    exit:
    mov ah,4ch
    int 21h
    main endp
end main