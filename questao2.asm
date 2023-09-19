.data
    prompt: .asciiz "Entre com sua idade: "
    resultado: .asciiz "Daqui ha 30 anos vc tera: "

.text
    main:

	li $v0, 4
       	la $a0, prompt
       	syscall
        
       	li $v0, 5
       	syscall
       	move $t0, $v0
       	
       	addi $t0, $t0, 30
        
    	li $v0, 4
        la $a0, resultado
        syscall

        li $v0, 1
        move $a0, $t0
        syscall
        
       	li $v0, 10
       	syscall