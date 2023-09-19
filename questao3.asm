.data
    a: .byte 54   
    b: .byte 45    

.text
    main:
        lb $t0, a

        lb $t1, b

        add $t2, $t0, $t1

        move $a0, $t2   
        li $v0, 4       
        syscall

        li $v0, 10      
        syscall
