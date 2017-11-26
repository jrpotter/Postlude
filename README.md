# Postlude

A replacement to the default Prelude.

## Usage

Disable the built-in prelude at the top of your file:

```haskell
{-# LANGUAGE NoImplicitPrelude #-}
```

Or directly in your project cabal file:

```haskell
default-extensions: NoImplicitPrelude
```

Then in your modules:

```haskell
import Postlude
```
