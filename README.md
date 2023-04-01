# RapidFetch
#### RapidFetch is a lightweight and efficient command-line tool that allows you to quickly download files from remote locations. With its simple and intuitive interface, you can easily specify the URL of the file you want to download, as well as the name and location of the local file. RapidFetch uses the powerful curl utility under the hood, allowing you to take advantage of its advanced features such as resuming interrupted downloads and limiting download speeds.

## Installation:
To use RapidFetch, you must first have `curl` installed on your system. Most modern Linux and macOS systems should already have `curl` installed. To check if `curl` is installed, open a terminal window and type:
`curl --version`
If `curl` is not installed, you can download it from the official website at https://curl.se/download.html.

Once you have `curl` installed, you can download the RapidFetch script using the following command:
`curl -O https://raw.githubusercontent.com/vsin9h/rapidfetch/main/rapidfetch.sh`

Alternatively, you can download the script manually from the GitHub repository.

## Usage:
To use RapidFetch, open a terminal window and navigate to the directory where the rapidfetch.sh script is located. Then, run the following command:
`bash rapidfetch.sh <url> <filename>`

Replace `<url>` with the URL of the file you want to download and `<filename>` with the name and location of the local file you want to save the downloaded file as.

For example, to download a file named `test-10mb.bin` from the [URL](https://github.com/vsin9h/rapidfetch/raw/main/test-10mb.bin) and save it in the current directory, you would run the following command:
`bash rapidfetch.sh https://github.com/vsin9h/rapidfetch/raw/main/test-10mb.bin 10mb.bin`

By default, RapidFetch will download the file at maximum speed. If you want to limit the download speed, you can specify the maximum speed in bytes per second using the -s option:
`bash rapidfetch.sh -s 102400 https://github.com/vsin9h/rapidfetch/raw/main/test-10mb.bin 10mb.bin`

This command will limit the download speed to 100 KB/s.

If the download is interrupted for any reason, you can simply re-run the command to resume the download from where it left off.

## Licence
RapidFetch is distributed under the MIT License. See [LICENSE](https://github.com/vsin9h/rapidfetch/blob/main/LICENSE) for more information.

## Contribution
If you find a bug or have a suggestion for improvement, please create an issue on the repository. If you would like to [contribute](https://github.com/vsin9h/rapidfetch/blob/main/CONTRIBUTING.md) code, please fork the repository and submit a pull request.
