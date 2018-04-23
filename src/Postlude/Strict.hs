{-# LANGUAGE NoImplicitPrelude #-}

module Postlude.Strict (module Strict) where

import Control.Monad.Trans.State.Strict as Strict
  ( State
  , StateT, StateT(StateT), runStateT
  )

import Control.Monad.Trans.Writer.Strict as Strict
  ( Writer
  , WriterT, WriterT(WriterT), runWriterT
  )

import Data.ByteString as Strict
  ( ByteString
  )

import Data.Text as Strict
  ( Text
  )
