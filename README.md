# aws-pws

[![Gem Version](https://badge.fury.io/rb/aws-pws.png)](https://rubygems.org/gems/aws-pws)
[![Build Status](https://travis-ci.org/fancyremarker/aws-pws.png?branch=master)](https://travis-ci.org/fancyremarker/aws-pws)

A password-protected CredentialProvider for AWS, built on [pws](https://github.com/janlelis/pws) and largely copied from [aws-keychain-util](https://github.com/zwily/aws-keychain-util), with an accompanying command line helper.

## Installation

Add the following line to your application's Gemfile.

    gem 'aws-pws'

And then run `bundle install`.

## Usage

## Installation

To install:

    gem install aws-pws

## Usage

To create your keychain:

    $ aws-pws init

To add an item to your aws keychain:

    $ aws-pws add

This will prompt for a friendly name, the Access Key ID, and the Secret Access Key.

To list items in the keychain:

    $ aws-pws ls

To show some saved credentials:

    $ aws-pws cat <name>

To emit the environment variable `export` commands that you can source into your shell:

    $ aws-pws env <name>

To always load the given environment in your shell, add the following to
your .bashrc or .zshrc

    source `aws-pws env <name>`

To automatically grab AWS credentials from your keychain when using the aws-sdk gem, add the following code:

    AWS.config(credential_provider: AWS::PWS::CredentialProvider.new(name))

## Contributing

1. Fork the project.
1. Commit your changes, with specs.
1. Ensure that your code passes specs (`rake`).
1. Create a new pull request on GitHub.

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2014 Frank Macreery and contributors.
