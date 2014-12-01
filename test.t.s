    .text
    .globl tstneg
tstneg:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    neg       %eax
    movl       %eax, 268(%esp)
    movl       268(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstequal
tstequal:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    movl       268(%esp), %ebx
    cmp        %eax, %ebx
    je         true_case1
    movl       $0, %eax
    jmp        end1
    true_case1:
    movl       $1, %eax
    end1:
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstnotequal
tstnotequal:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    movl       268(%esp), %ebx
    cmp        %eax, %ebx
    jne         true_case2
    movl       $0, %eax
    jmp        end2
    true_case2:
    movl       $1, %eax
    end2:
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstgteq
tstgteq:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       268(%esp), %eax
    movl       264(%esp), %ebx
    cmp        %eax, %ebx
    jge         true_case3
    movl       $0, %eax
    jmp        end3
    true_case3:
    movl       $1, %eax
    end3:
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstlteq
tstlteq:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       268(%esp), %eax
    movl       264(%esp), %ebx
    cmp        %eax, %ebx
    jle         true_case4
    movl       $0, %eax
    jmp        end4
    true_case4:
    movl       $1, %eax
    end4:
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstgt
tstgt:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       268(%esp), %eax
    movl       264(%esp), %ebx
    cmp        %eax, %ebx
    jg         true_case5
    movl       $0, %eax
    jmp        end5
    true_case5:
    movl       $1, %eax
    end5:
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstlt
tstlt:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       268(%esp), %eax
    movl       264(%esp), %ebx
    cmp        %eax, %ebx
    jl         true_case6
    movl       $0, %eax
    jmp        end6
    true_case6:
    movl       $1, %eax
    end6:
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstconst
tstconst:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       $10, %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstcall
tstcall:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    push       $10
    push       $100
    push       $strval0
    movl       $printf, %eax
    call       *%eax
    addl       $12, %esp
    movl       %eax, 264(%esp)
    movl       $10, %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .data
    .globl strval0
strval0:
    .asciz    "Test: %d %d\n"

    .text
    .globl tstadd
tstadd:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    addl       268(%esp), %eax
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstsub
tstsub:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    subl       268(%esp), %eax
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstmul
tstmul:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    imul       268(%esp), %eax
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstdiv
tstdiv:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    cltd
    movl       268(%esp), %ebx
    idiv       %ebx
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstmod
tstmod:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    cltd
    movl       268(%esp), %ebx
    idiv       %ebx
    movl       %edx, %eax
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstshl
tstshl:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    mov        268(%esp), %cl
    shll       %cl, %eax
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstshr
tstshr:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    mov        268(%esp), %cl
    shrl       %cl, %eax
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

