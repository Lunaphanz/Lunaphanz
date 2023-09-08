# Write the C code here 
# if you have used something 
# different from the one given.

# Enter your MIPS code below. 
# Write short comments explaining 
# each line of your code 
# Explain your use of labels
branch: 
    blt $s3, $s1, while # while i < n
while: 
    sll $t1, $s3, 2 
    add $t2, $s0, $t1 # get memory address of A[i]
    lw $s4, 0($t2) # load A[i]
    bge $s4, $s2, if #if A[i] >= val
    else:
        add $t1, $s3, $zero # k = i
        addi $t2, $s1, -1 # n - 1
        blt $t1, $t2, for #  for (k < n - 1)
        addi $s1, $s1, -1 # n = n - 1
        j while
        for:
            sll $t1, $s3, 2 
            add $t2, $s0, $t1 # get memory address of A[k]
            lw $t3, 0($t2)  # load A[k]
            sw $t3, 4($t2) # save A[k] = A[k+1]
            j else
    if:     
        sub $s4, $s4, $s2 # A[i] - val
        addi $s3, $s3, 1 # i++

