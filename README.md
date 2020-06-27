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
                 split them inside the `.bit/` folder and exclude them in the `.gitignore` file
--join : rebuild the large files from the fragments stored inside the `.bit/` folder
```

### Size suffixes

```
b : byte
k : kilobyte
m : megabyte
g : gigabyte
```

### Examples

```bash
bit --split 50m
```

Finds non-excluded files larger than 50 megabytes in the current folder,
splits them inside the `.bit/` folder and excludes them in the `.gitignore` file.

```bash
bit --join
```

Rebuilds the large files from the fragments stored inside the `.bit/` folder.

## Limitations

*   Only understands the following subset of the `.gitignore` syntax :
    *   /PATH/TO/
    *   !/PATH/TO/
    *   PATH/TO/
    *   !PATH/TO/
    *   /PATH/TO/file.ext
    *   !/PATH/TO/file.ext
    *   PATH/TO/file.ext
    *   !PATH/TO/file.ext
    *   file.ext
    *   !file.ext
    *   file*filter.ext
    *   !file*filter.ext

## Version

1.0

## Author

Eric Pelzer (ecstatic.coder@gmail.com).

## License

This project is licensed under the GNU General Public License version 3.

See the [LICENSE.md](LICENSE.md) file for details.
