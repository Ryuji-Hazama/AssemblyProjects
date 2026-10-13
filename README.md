# Assembly Projects

## Build Commands

```bash
nasm -f elf64 <program>.asm -o <program>.o
ld <program>.o -o <program>
```

## About `section .bss`

### Declare Variables

When you declare valiables, use the following keywords for each size of variables

| Size | Keyword | Meaning |
|------|---------|---------|
| 1 byte | `resb` | Reserve 1 byte |
| 2 bytes | `resw` | Reserve 1 word (2 bytes) |
| 4 bytes | `resd` | Reserve 1 double word (4 bytes) |
| 8 bytes | `resq` | Reserve 1 quad word (8 bytes) |
| 16 bytes | `resx` | Reserve 1 double quad word (16 bytes) |
