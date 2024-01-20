# Troubleshooting

There are several steps you can try to make the uploading work.

* [Lower the upload speed](#lower-the-upload-speed)
* [Make sure pyserial is installed]()

If it still doesn't upload after these steps, please use of the laptops at the back to upload your code.

### Lower the upload speed

Change the speed in the "tools" menu to a lower speed, e.g. 115200.

![upload-speed](/2023/Images/upload-speed.png)


### Make sure pyserial is installed

Firstly, check python is installed.

On Windows in the console:

```py --version```

On Mac in the terminal:

```python3 --version```

If its not installed go [here](https://www.python.org/downloads/) to download it.

![command-prompt](/2023/Images/command-prompt.png)

<br>

Next once you have python, run the following command:

On Windows in the console:

```py -m pip install pyserial```

On Mac in the terminal:

```python3 -m pip install pyserial```