{-# LANGUAGE NoImplicitPrelude #-}

module Postlude.Strict
( module S
) where

import Control.Monad.Trans.State.Strict as S
  ( State
  , StateT, StateT(StateT), runStateT
  )

import Control.Monad.Trans.Writer.Strict as S
  ( Writer
  , WriterT, WriterT(WriterT), runWriterT
  )

import Data.ByteString as S
  ( ByteString
  )

import Data.Text as S
  ( Text
  )
