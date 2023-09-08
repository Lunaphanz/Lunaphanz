# Write the C code here 
# if you have used something 
# different from the one given.

# Enter your MIPS code below. 
# Write short comments explaining 
# each line of your code 
# Explain your use of labels
while: 
    ble $s1, $s3, exit # while n < i
    sll $t1, $s3, 2 
    add $s4, $s0, $t1 # get memory address of A[i]
    lw $s5, 0($s4) # load A[i]
    bge $s5, $s2, if #if A[i] >= val
    add $s6, $s3, $zero # k = i
    else:    
        blt $s6, $s1, for #  for (k < n)
        addi $s1, $s1, -1 # n = n - 1
        j while
        for:
            sll $t1, $s6, 2 
            add $t2, $s0, $t1 # get memory address of A[k]
            lw $t3, 4($t2)  # load A[k+1]
            sw $t3, 0($t2) # save A[k] = A[k+1]
            addi $s6, $s6, 1 # k + 1
            j else
    if:     
        sub $s5, $s5, $s2 # A[i] - val
        sw $s5, 0($s4) # save A[i]
        addi $s3, $s3, 1 # i++
        j while
exit:

