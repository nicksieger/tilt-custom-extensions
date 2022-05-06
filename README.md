# tilt-custom-extensions

Tilt extensions to customize your Tilt setup and do useful things

This is a collection of random extra Tilt extensions and sample Tiltfiles that don't fit in the main tilt-extensions repository.

## tilt-notify

A simple extension that sends Tilt build results to the Mac OS notification center.

### Install

You can install into any running Tilt with:

```
curl -s https://raw.githubusercontent.com/nicksieger/tilt-custom-extensions/main/tilt-notify/extension.yaml | tilt apply -f -
```

Or you can add it to your Tiltfile:

```starlark
v1alpha1.extension_repo(
    'tilt-custom-extensions',
    url='https://github.com/nicksieger/tilt-custom-extensions'
)
v1alpha1.extension(
    'tilt-notify',
    repo_name='tilt-custom-extensions',
    repo_path='tilt-notify'
)
```

## tilt-xbar

An [xbar](https://xbarapp.com/) plugin to control Tilt from the macOS menubar.

### Install

1. Install and run [xbar](https://xbarapp.com/)
2. Install the plugin with the following command:
```
curl -sL https://raw.githubusercontent.com/nicksieger/tilt-custom-extensions/main/xbar/install.sh | bash 
```
