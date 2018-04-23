{-# LANGUAGE NoImplicitPrelude #-}

module Postlude.Lazy (module Lazy) where

import Control.Monad.Trans.State as Lazy
  ( State
  , StateT, StateT(StateT), runStateT
  )

import Control.Monad.Trans.Writer as Lazy
  ( Writer
  , WriterT, WriterT(WriterT), runWriterT
  )

import Data.ByteString.Lazy as Lazy
  ( ByteString
  )

import Data.Text.Lazy as Lazy
  ( Text
  )
