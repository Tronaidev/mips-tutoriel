.data
  message: .asciiz "Quel age avez vous ?"
  message_2: .asciiz "Votre age est : "

.text
  
  # On affiche le message de demande
  li $v0, 4
  la $a0, message
  syscall
  
  # On demande l'age de l'utilisateur
  li $v0, 5
  syscall
  move $t0, $v0
  
  # On affiche l'age de l'utilisateur
  li $v0, 4
  la $a0, message_2
  syscall
  
  li $v0, 1
  move $a0, $t0
  syscall
  
  # On arrete le programme
  li $v0, 10
  syscall
  
