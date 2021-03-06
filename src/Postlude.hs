{-# LANGUAGE NoImplicitPrelude #-}

-- The following maps all imports into a single module alias for easy exporting.
-- In all cases, we choose to explicitly list all exports (and avoid the use of
-- the .. syntactic construct) to make it clear what is being included when
-- importing the Postlude module.
--
-- It is generally expected one will add the -XNoImplicitPrelude pragma to the
-- file Postlude is being used in, and to import Postlude without any
-- qualification.
module Postlude
( module X
) where

import Prelude as X
  ( (^)
  , (^^)
  , fromIntegral
  )

import Control.Applicative as X
  ( Alternative, (<|>), empty, many, some
  , Applicative, (*>), (<*), (<*>), liftA2, pure
  , Const, getConst
  , (<$)
  , (<$>)
  , (<**>)
  , liftA
  , liftA3
  , optional
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
  , (<=<)
  , (=<<)
  , (>=>)
  , ap
  , forM
  , forM_
  , forever
  , guard
  , liftM
  , liftM2
  , liftM3
  , liftM4
  , liftM5
  , mapM
  , mapM_
  , sequence
  , sequence_
  , unless
  , void
  , when
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

import Control.Monad.Fix as X
  ( MonadFix, MonadFix(mfix)
  , fix
  )

import Control.Monad.IO.Class as X
  ( MonadIO, liftIO
  )

import Control.Monad.Trans.Class as X
  ( MonadTrans, lift
  )

import Control.Monad.Trans.Except as X
  ( Except
  , ExceptT, ExceptT(ExceptT), runExceptT
  , catchE, throwE
  )

import Control.Monad.Trans.Free as X
  ( Free
  , FreeF, FreeF(Free), FreeF(Pure)
  , FreeT, FreeT(FreeT), runFreeT
  , MonadFree, wrap
  )

import Control.Monad.Trans.Reader as X
  ( Reader
  , ReaderT, ReaderT(ReaderT), runReaderT
  , ask, local, reader
  )

import Data.Bits as X
  ( Bits
  ,  (.&.)
  ,  (.|.)
  ,  bit
  ,  bitSize
  ,  bitSizeMaybe
  ,  clearBit
  ,  complement
  ,  complementBit
  ,  isSigned
  ,  popCount
  ,  rotate
  ,  rotateL
  ,  rotateR
  ,  setBit
  ,  shift
  ,  shiftL
  ,  shiftR
  ,  testBit
  ,  unsafeShiftL
  ,  unsafeShiftR
  ,  xor
  ,  zeroBits
  )

import Data.Bool as X
  ( Bool, Bool(False), Bool(True)
  , (&&)
  , (||)
  , not
  , otherwise
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

import Data.Ratio as X
  ( Ratio, (%), denominator, numerator
  )

import Data.Semigroup as X
  ( Semigroup, (<>), sconcat, stimes
  )

import Data.Ord as X
  ( Ord, (<), (<=), (>), (>=), compare, max, min
  , Ordering, Ordering(EQ), Ordering(GT), Ordering(LT)
  )

import Data.String as X
  ( String
  )

import Data.Traversable as X
  ( Traversable, mapM, sequence, sequenceA, traverse
  )

import Data.Word as X
  ( Word
  , Word8
  , Word16
  , Word32
  , Word64
  )

import Numeric as X
  ( expm1
  , log1mexp
  , log1p
  , log1pexp
  )

import Prelude as X  -- GHC.Enum
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

import Prelude as X  -- GHC.Err
  ( error
  , undefined
  )

import Prelude as X  -- GHC.Float
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
  ,   log
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

import Prelude as X  -- GHC.Num
  ( Num, (*), (+), (-), abs, fromInteger, negate, signum
  , Integer
  )

import Prelude as X  -- GHC.Real
  ( Fractional, (/), fromRational, recip
  , Integral, div, divMod, mod, quot, quotRem, rem, toInteger
  , Rational
  , Real, toRational
  , RealFrac, ceiling, floor, properFraction, round, truncate
  )

import System.Environment as X
  ( getArgs
  , getEnv
  , getEnvironment
  , getProgName
  , lookupEnv
  , setEnv
  , unsetEnv
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
  , readFile
  , stderr
  , stdin
  , stdout
  , withFile
  )

import Text.Read as X
  ( Read, readList, readListPrec, readPrec, readsPrec
  , read
  )

import Text.Show as X
  ( Show, show, showList, showsPrec
  )
