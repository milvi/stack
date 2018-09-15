{-# LANGUAGE ForeignFunctionInterface #-}

module Lib where

import Foreign.C.String
import System.IO.Unsafe

foreign import ccall unsafe "a_dependent.h greeting"
  c_greeting :: CString

greeting :: String
greeting = unsafePerformIO $ peekCString c_greeting
