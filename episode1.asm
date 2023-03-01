.data
   message: .asciiz "Hello World !"
  
.text
   li $v0, 4         # On annonce que l'on affiche un string.
   la $a0, message   # On donne le string à afficher.
   syscall           # On demande au système d'effectuer l'action.
   
   li $v0, 10        # On annonce que l'on va arreter le programme.
   syscall           # On demande au système d'effectuer l'action.
