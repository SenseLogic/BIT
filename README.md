![](https://github.com/senselogic/BIT/blob/master/LOGO/bit.png)

# Bit

Git large file manager.

## Installation

Install the [DMD 2 compiler](https://dlang.org/download.html) (using the MinGW setup option on Windows).

Build the executable with the following command line :

```bash
dmd -m64 bit.d
```

## Command line

```bash
bit [options]
```

### Options

```
--split <size> : find non-excluded files larger than `size` in the current folder,
                 split them inside the `.bit/` folder and append their paths to the `.gitignore` file
--join : rebuild large files from the fragments stored inside the `.bit/` folder
```

### Size suffixes

```
b : byte
k : kilobyte
m : megabyte
g : gigabyte
```

### File exclusion

*   The `.gitignore` file can use the following syntax subset :
    *   # comment
    *   /PATH/TO/
    *   !/PATH/TO/
    *   /PATH/TO/file*filter
    *   !/PATH/TO/file*filter
    *   PATH/TO/
    *   !PATH/TO/
    *   PATH/TO/file*filter
    *   !PATH/TO/file*filter
    *   file*filter
    *   !file*filter

### Examples

```bash
bit --split 50m
```

Finds non-excluded files larger than 50 megabytes in the current folder,
splits them inside the `.bit/` folder and and appends their paths to the `.gitignore` file.

```bash
bit --join
```

Rebuilds large files from the fragments stored inside the `.bit/` folder.

## Version

1.0

## Author

Eric Pelzer (ecstatic.coder@gmail.com).

## License

This project is licensed under the GNU General Public License version 3.

See the [LICENSE.md](LICENSE.md) file for details.
