{-# LANGUAGE NoImplicitPrelude #-}

module Postlude (module X) where

import Control.Applicative as X
  ( (*>)
  , (<$>)
  , (<*)
  , (<*>)
  , Applicative
  , pure
  )

import Control.Arrow as X
  ( (&&&)
  , (***)
  , Arrow
  , arr
  , first
  , returnA
  , second
  )

import Control.Monad as X
  ( Functor
  , Monad
  , MonadPlus
  , (>>)
  , (>>=)
  , fail
  , filterM
  , fmap
  , guard
  , mplus
  , mzero
  , return
  )

import Control.Monad.Reader as X
  ( MonadReader
  , ask
  , local
  , reader
  )

import Control.Monad.Trans as X
  ( MonadIO
  , lift
  , liftIO
  )

import Control.Monad.Trans.Reader as X
  ( ReaderT (..)
  )

import Data.Bool as X
  ( Bool (..)
  )

import Data.Char as X
  ( Char (..)
  )

import Data.Either as X
  ( Either (..)
  )

import Data.Eq as X
  ( Eq (..)
  )

import Data.Function as X
  ( ($)
  , (.)
  , id
  )

import Data.Int as X
  ( Int
  , Int8
  , Int16
  , Int32
  , Int64
  )

import Data.List as X
  ( (++)
  , all
  , any
  , filter
  , foldl
  , foldl1
  , foldr
  , foldr1
  , map
  , zip
  )

import Data.Maybe as X
  ( Maybe (..)
  )

import Data.Monoid as X
  ( Monoid
  , mappend
  , mconcat
  , mempty
  )

import Data.Ord as X
  ( Ord (..)
  )

import Data.String as X
  ( String
  )

import Data.Traversable as X
  ( Traversable (..)
  )

import Prelude as X
  ( Num (..)
  )

import System.Environment as X
  ( getArgs
  )

import System.IO as X
  ( FilePath
  , Handle
  , IO
  , IOMode (..)
  , openFile
  , print
  , stderr
  , stdin
  , stdout
  , withFile
  )
