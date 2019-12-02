{-# LANGUAGE NoImplicitPrelude #-}

module Postlude.Lazy
( module L
) where

import Control.Monad.Trans.State as L
  ( State
  , StateT, StateT(StateT), runStateT
  )

import Control.Monad.Trans.Writer as L
  ( Writer
  , WriterT, WriterT(WriterT), runWriterT
  )

import Data.ByteString.Lazy as L
  ( ByteString
  )

import Data.Text.Lazy as L
  ( Text
  )
