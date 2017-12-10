{-# LANGUAGE NoImplicitPrelude #-}

module Postlude (module X) where

import Control.Applicative as X
  ( Applicative (..)
  , (<$>)
  , pure
  )

import Control.Arrow as X
  ( Arrow (..)
  , ArrowChoice (..)
  , ArrowLoop (..)
  , ArrowMonad (..)
  , ArrowPlus (..)
  , ArrowZero (..)
  , (<<<)
  , (>>>)
  , returnA
  )

import Control.Monad as X
  ( Monad (..)
  , MonadPlus (..)
  , filterM
  , guard
  )

import Control.Monad.Reader as X
  ( MonadReader (..)
  )

import Control.Monad.Trans as X
  ( MonadIO (..)
  , lift
  )

import Control.Monad.Trans.Except as X
  ( ExceptT (..)
  )

import Control.Monad.Trans.Maybe as X
  ( MaybeT (..)
  )

import Control.Monad.Trans.Reader as X
  ( ReaderT (..)
  )

import Data.Bool as X
  ( Bool (..)
  , (&&)
  , (||)
  , not
  , otherwise
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
  , (&)
  , (.)
  , const
  , fix
  , flip
  , id
  , on
  )

import Data.Functor as X
  ( Functor (..)
  , ($>)
  , (<$>)
  , void
  )

import Data.Functor.Identity as X
  ( Identity (..)
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
  , length
  , map
  , zip
  )

import Data.Maybe as X
  ( Maybe (..)
  )

import Data.Monoid as X
  ( Monoid (..)
  )

import Data.Ord as X
  ( Ord (..)
  , Ordering (..)
  )

import Data.String as X
  ( String
  )

import Data.Traversable as X
  ( Traversable (..)
  )

import GHC.Enum as X
  ( Bounded (..)
  , Enum (..)
  )

import GHC.Err as X
  ( error
  )

import GHC.Float as X
  ( Double (..)
  , Float (..)
  , Floating (..)
  , RealFloat (..)
  )

import GHC.Num as X
  ( Num (..)
  , Integer
  )

import GHC.Real as X
  ( Fractional (..)
  , Integral (..)
  , Ratio (..)
  , Rational
  )

import GHC.Show as X
  ( Show (..)
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
