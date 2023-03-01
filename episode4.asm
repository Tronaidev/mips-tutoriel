.data
	message: .asciiz "Quel age avez vous ? "
	message_2: .asciiz "Votre age est : " 
	message_ok: .asciiz "Vous n'avez pas 18 ans !"
	
.text
	# On affiche de message de demande
	li $v0, 4
	la $a0, message
	syscall
	
	# On demande l'age de l'utilisateur
	li $v0, 5
	syscall
	move $t0, $v0
	
	# On fait les vérifications
	li $t1, 18
	bge $t0, $t1, verification
	
	


	li $v0, 10
	syscall


verification:
	li $v0, 4
	la $a0, message_ok
	syscall
	
	li $v0, 10
	syscall
	
