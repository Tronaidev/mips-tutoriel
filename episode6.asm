.data
	texte: .asciiz "Hello World !\n"
	
.text
	li $t0, 0 # Notre compteur
	li $t1, 1 # Le nombre de tour à faire
	
   boucle:
   	
   	# Action que l'on veut repeter
   	li $v0, 4
   	la $a0, texte
   	syscall
   	
   	# On incrémente le compteur
   	addi $t0, $t0, 1
   	
   	# Vérification
   	bne $t0, $t1, boucle
   	
   fin:
   	li $v0, 10
   	syscall
