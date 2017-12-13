{-# LANGUAGE NoImplicitPrelude #-}

-- The following maps all imports into a single module alias for easy exporting.
-- In all cases, we choose to explicitly list all exports (and avoid the use of
-- the .. syntactic construct) to make it clear what is being included when
-- importing the Postlude module.
--
-- It is generally expected one will add the -XNoImplicitPrelude pragma to the
-- file Postlude is being used in, and to import Postlude without any
-- qualification.
module Postlude (module X) where

import Control.Applicative as X
  ( Applicative, (*>), (<*), (<*>), pure
  , (<$>)
  )

import Control.Arrow as X
  ( Arrow, (&&&), (***), arr, first, second
  , ArrowChoice, (+++), (|||), left, right
  , ArrowLoop, loop
  , ArrowMonad
  , ArrowPlus, (<+>)
  , ArrowZero, zeroArrow
  , (<<<)
  , (>>>)
  , returnA
  )

import Control.Monad as X
  ( Monad, (>>=), (>>), return, fail
  , MonadPlus, mplus, mzero
  , guard
  )

import Control.Monad.Catch as X
  ( Exception
  ,   Exception(displayException)
  ,   Exception(fromException)
  ,   Exception(toException)
  , Handler, Handler(Handler)
  , MonadCatch, catch
  , MonadMask, mask, uninterruptibleMask
  , MonadThrow, throwM
  , SomeException, SomeException(SomeException)
  , bracket
  , finally
  , handle
  , try
  )

import Control.Monad.Except as X
  ( MonadError, catchError, throwError
  )

import Control.Monad.Free as X
  ( MonadFree, wrap
  )

import Control.Monad.Reader as X
  ( MonadReader, ask, local, reader
  )

import Control.Monad.State as X
  ( MonadState, get, put, state
  )

import Control.Monad.Trans as X
  ( MonadIO, liftIO
  , lift
  )

import Control.Monad.Writer as X
  ( MonadWriter, listen, pass, tell, writer
  )

import Control.Monad.Trans.Except as X
  ( Except -- ^ ExceptT e Identity :: * -> *
  , ExceptT, ExceptT(ExceptT), runExceptT
  )

import Control.Monad.Trans.Free as X
  ( Free -- ^ FreeT f Identity :: * -> *
  , FreeT, FreeT(FreeT), runFreeT
  )

import Control.Monad.Trans.Reader as X
  ( Reader -- ^ ReaderT r Identity :: * -> *
  , ReaderT, ReaderT(ReaderT), runReaderT
  )

-- We default to the lazy implementation of State.
import Control.Monad.Trans.State as X
  ( State -- ^ StateT s Identity :: * -> *
  , StateT, StateT(StateT), runStateT
  )

-- We default to the lazy implementation of Writer.
import Control.Monad.Trans.Writer as X
  ( Writer -- ^ WriterT w Identity :: * -> *
  , WriterT, WriterT(WriterT), runWriterT
  )

import Data.Bool as X
  ( Bool, Bool(False), Bool(True)
  , (&&)
  , (||)
  , not
  , otherwise
  )

import Data.ByteString.Lazy as X
  ( ByteString
  )

import Data.Char as X
  ( Char
  )

import Data.Either as X
  ( Either, Either(Left), Either(Right)
  )

import Data.Eq as X
  ( Eq, (/=), (==)
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
  ( Functor, (<$), fmap
  , ($>)
  , (<$>)
  , void
  )

import Data.Functor.Identity as X
  ( Identity, Identity(Identity), runIdentity
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
  ( Maybe, Maybe(Just), Maybe(Nothing)
  )

import Data.Monoid as X
  ( Monoid, mappend, mconcat, mempty
  )

import Data.Ord as X
  ( Ord, (<), (<=), (>), (>=), compare, max, min
  , Ordering, Ordering(EQ), Ordering(GT), Ordering(LT)
  )

import Data.String as X
  ( String
  )

import Data.Text.Lazy as X
  ( Text
  )

import Data.Traversable as X
  ( Traversable, mapM, sequence, sequenceA, traverse
  )

import GHC.Enum as X
  ( Bounded, maxBound, minBound
  , Enum
  ,   enumFrom
  ,   enumFromThen
  ,   enumFromThenTo
  ,   enumFromTo
  ,   fromEnum
  ,   pred
  ,   succ
  ,   toEnum
  )

import GHC.Err as X
  ( error
  )

import GHC.Float as X
  ( Double
  , Float
  , Floating
  ,   (**)
  ,   acos
  ,   acosh
  ,   asin
  ,   asinh
  ,   atan
  ,   atanh
  ,   cos
  ,   cosh
  ,   exp
  ,   expm1
  ,   log
  ,   log1mexp
  ,   log1p
  ,   log1pexp
  ,   logBase
  ,   pi
  ,   sin
  ,   sinh
  ,   sqrt
  ,   tan
  ,   tanh
  , RealFloat
  ,   atan2
  ,   decodeFloat
  ,   encodeFloat
  ,   exponent
  ,   floatDigits
  ,   floatRadix
  ,   floatRange
  ,   isDenormalized
  ,   isIEEE
  ,   isInfinite
  ,   isNaN
  ,   isNegativeZero
  ,   scaleFloat
  ,   significand
  )

import GHC.Num as X
  ( Num, (*), (+), (-), abs, fromInteger, negate, signum
  , Integer
  )

import GHC.Real as X
  ( Fractional, (/), fromRational, recip
  , Integral, div, divMod, mod, quot, quotRem, rem, toInteger
  , Ratio
  , Rational
  )

import GHC.Show as X
  ( Show, show, showList, showsPrec
  )

import System.Environment as X
  ( getArgs
  , getEnvironment
  , getProgName
  )

import System.IO as X
  ( FilePath
  , Handle
  , IO
  , IOMode
  ,   IOMode(AppendMode)
  ,   IOMode(ReadMode)
  ,   IOMode(ReadWriteMode)
  ,   IOMode(WriteMode)
  , openFile
  , print
  , stderr
  , stdin
  , stdout
  , withFile
  )
