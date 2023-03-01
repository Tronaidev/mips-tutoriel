.data

.text
  # On assigne les valeurs aux registres
  li $t0, 10
  li $t0, 5
  
  # On fait le calcul
  add $t2, $t1, $t0
  
  # On affiche le résultat
  li $v0, 1
  move $a0, $t2
  syscall
  
  # On arrete le système
  li $v0, 10
  syscall
