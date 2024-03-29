section .data
    prompt db 'Nome do computador: $'
    buffer db 100, 0

section .text
    global _start

_start:
    ; Exibir prompt na tela
    mov ah, 09h         ; Função de serviço para exibir uma string
    mov dx, prompt      ; DX aponta para o prompt
    int 21h             ; Chamada de interrupção 21h para exibir o prompt

    ; Obter o nome do computador
    mov ah, 30h         ; Função de serviço para obter informações do sistema
    lea dx, [buffer]    ; DX aponta para o buffer onde o nome do computador será armazenado
    int 21h             ; Chamada de interrupção 21h para obter o nome do computador

    ; Exibir o nome do computador na tela
    mov ah, 09h         ; Função de serviço para exibir uma string
    mov dx, buffer      ; DX aponta para o buffer contendo o nome do computador
    int 21h             ; Chamada de interrupção 21h para exibir o nome do computador

    ; Encerrar o programa
    mov ah, 4Ch         ; Função de serviço para terminar o programa
    int 21h             ; Chamada de interrupção 21h para encerrar o programa
