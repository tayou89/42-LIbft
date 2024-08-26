# Libft

## Description
Libft is a project at 42 school that requires us to re-create some standard C library functions including some additional ones that can be useful for future projects.

## Norminette
This project adheres to the 42 school's coding standard enforced by the Norminette tool. For detailed rules, refer to the Norm PDF in the project resources.

## Table of Contents
1. [Installation](#installation)
2. [Usage](#usage)
3. [Functions](#functions)
4. [Makefile](#makefile)
5. [Testing](#testing)

## Installation
To compile the library, run:

```
make
```

For bonus functions:

```
make bonus
```

## Usage
1. Include the header:
   ```c
   #include "libft.h"
   ```

2. Compile your project:
   ```
   gcc your_c_file.c libft.a -o your_program
   ```

## Functions

### Libc Functions
- [ft_isalpha](sources/mendatory/part_1/ft_isalpha.c)
- [ft_isdigit](sources/mendatory/part_1/ft_isdigit.c)
- [ft_isalnum](sources/mendatory/part_1/ft_isalnum.c)
- [ft_isascii](sources/mendatory/part_1/ft_isascii.c)
- [ft_isprint](sources/mendatory/part_1/ft_isprint.c)
- [ft_strlen](sources/mendatory/part_1/ft_strlen.c)
- [ft_memset](sources/mendatory/part_1/ft_memset.c)
- [ft_bzero](sources/mendatory/part_1/ft_bzero.c)
- [ft_memcpy](sources/mendatory/part_1/ft_memcpy.c)
- [ft_memmove](sources/mendatory/part_1/ft_memmove.c)
- [ft_strlcpy](sources/mendatory/part_1/ft_strlcpy.c)
- [ft_strlcat](sources/mendatory/part_1/ft_strlcat.c)
- [ft_toupper](sources/mendatory/part_1/ft_toupper.c)
- [ft_tolower](sources/mendatory/part_1/ft_tolower.c)
- [ft_strchr](sources/mendatory/part_1/ft_strchr.c)
- [ft_strrchr](sources/mendatory/part_1/ft_strrchr.c)
- [ft_strncmp](sources/mendatory/part_1/ft_strncmp.c)
- [ft_memchr](sources/mendatory/part_1/ft_memchr.c)
- [ft_memcmp](sources/mendatory/part_1/ft_memcmp.c)
- [ft_strnstr](sources/mendatory/part_1/ft_strnstr.c)
- [ft_atoi](sources/mendatory/part_1/ft_atoi.c)
- [ft_calloc](sources/mendatory/part_1/ft_calloc.c)
- [ft_strdup](sources/mendatory/part_1/ft_strdup.c)

### Additional Functions
- [ft_substr](sources/mendatory/part_2/ft_substr.c)
- [ft_strjoin](sources/mendatory/part_2/ft_strjoin.c)
- [ft_strtrim](sources/mendatory/part_2/ft_strtrim.c)
- [ft_split](sources/mendatory/part_2/ft_split.c)
- [ft_itoa](sources/mendatory/part_2/ft_itoa.c)
- [ft_strmapi](sources/mendatory/part_2/ft_strmapi.c)
- [ft_striteri](sources/mendatory/part_2/ft_striteri.c)
- [ft_putchar_fd](sources/mendatory/part_2/ft_putchar_fd.c)
- [ft_putstr_fd](sources/mendatory/part_2/ft_putstr_fd.c)
- [ft_putendl_fd](sources/mendatory/part_2/ft_putendl_fd.c)
- [ft_putnbr_fd](sources/mendatory/part_2/ft_putnbr_fd.c)

### Bonus Functions
- [ft_lstnew](sources/bonus/ft_lstnew.c)
- [ft_lstadd_front](sources/bonus/ft_lstadd_front.c)
- [ft_lstsize](sources/bonus/ft_lstsize.c)
- [ft_lstlast](sources/bonus/ft_lstlast.c)
- [ft_lstadd_back](sources/bonus/ft_lstadd_back.c)
- [ft_lstdelone](sources/bonus/ft_lstdelone.c)
- [ft_lstclear](sources/bonus/ft_lstclear.c)
- [ft_lstiter](sources/bonus/ft_lstiter.c)
- [ft_lstmap](sources/bonus/ft_lstmap.c)

## Makefile
Available commands:

- `make`: Compiles the library
- `make bonus`: Includes bonus functions
- `make clean`: Removes object files
- `make fclean`: Removes object files and the library
- `make re`: Recompiles the library

## Testing
Example for testing `ft_strlen`:

```c
#include "libft.h"
#include <stdio.h>

int main() {
    char *str = "Hello, World!";
    printf("Length of '%s': %zu\n", str, ft_strlen(str));
    return 0;
}
```

Compile and run:
```
gcc test_strlen.c libft.a -o test_strlen
./test_strlen
```