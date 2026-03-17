# ft_printf

A custom implementation of the C `printf` function that formats and writes output to standard output, then returns the number of printed characters.

## 📦 Installation

This project is a C static library project .

### Prerequisites

- `make`
- A C compiler (e.g. `cc` or `gcc`)

### Build

```bash
make
```

This generates the static library:

- `libftprintf.a`

### Clean build files

```bash
make clean
```

### Remove build files and library

```bash
make fclean
```

### Rebuild from scratch

```bash
make re
```

## 🚀 Usage

Include the header, build the library, and link it in your program.

### Example

```c
#include "ft_printf.h"

int main(void)
{
    int count;

    count = ft_printf("Hello %s! Number: %d, Hex: %x, Ptr: %p\n", "world", 42, 42, "42");
    ft_printf("Printed chars: %d\n", count);
    return (0);
}
```

### Compile with the library

```bash
cc main.c libftprintf.a -o app
```

### Run

```bash
./app
```

### Supported format specifiers

- `%c` character
- `%s` string
- `%d` / `%i` signed integer
- `%u` unsigned integer
- `%x` / `%X` hexadecimal (lowercase / uppercase)
- `%p` pointer address
- `%%` percent sign

## Variadic Functions in `ft_printf`

`ft_printf` is declared like this:

```c
int ft_printf(const char *format, ...);
```

The `...` means the function is **variadic**: it can receive a variable number of arguments after the fixed ones (`format` in this case).

In C, variadic arguments are handled with `<stdarg.h>`:

- `va_list ap;` creates a variable that will iterate through extra arguments.
- `va_start(ap, format);` initializes the iteration, starting after `format`.
- `va_arg(ap, type);` reads the next argument with the expected type.
- `va_end(ap);` cleans up when done.

In this project, each format specifier (`%d`, `%s`, `%x`, etc.) tells `ft_printf` which type to read next with `va_arg`, then the corresponding helper function prints it.

Example idea:

```c
ft_printf("Name: %s, Age: %d\n", "Alice", 25);
```

- `%s` -> read next argument as `char *` (`"Alice"`)
- `%d` -> read next argument as `int` (`25`)

## 🛠 Project Structure

```text
ft_printf/
├── Makefile
├── ft_printf.h
├── ft_printf.c
├── ft_putchar.c
├── ft_putint.c
├── ft_putstr.c
├── ft_putunsigned.c
├── ft_putadress.c
└── ft_put_hexa.c
```

