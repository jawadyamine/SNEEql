{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_SNEEql_project (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/jawadyamine/Google Drive/polimi/3rd semester/principles of programming languages /Project/SNEEql-project/.stack-work/install/x86_64-osx/83c5d0c0b05d8f201326167373f38eadf5d9bb9273b17c9f8c0efba42995dc0f/8.6.5/bin"
libdir     = "/Users/jawadyamine/Google Drive/polimi/3rd semester/principles of programming languages /Project/SNEEql-project/.stack-work/install/x86_64-osx/83c5d0c0b05d8f201326167373f38eadf5d9bb9273b17c9f8c0efba42995dc0f/8.6.5/lib/x86_64-osx-ghc-8.6.5/SNEEql-project-0.1.0.0-Ixb1vgo4U6c3nRcg3C671z-SNEEql-project"
dynlibdir  = "/Users/jawadyamine/Google Drive/polimi/3rd semester/principles of programming languages /Project/SNEEql-project/.stack-work/install/x86_64-osx/83c5d0c0b05d8f201326167373f38eadf5d9bb9273b17c9f8c0efba42995dc0f/8.6.5/lib/x86_64-osx-ghc-8.6.5"
datadir    = "/Users/jawadyamine/Google Drive/polimi/3rd semester/principles of programming languages /Project/SNEEql-project/.stack-work/install/x86_64-osx/83c5d0c0b05d8f201326167373f38eadf5d9bb9273b17c9f8c0efba42995dc0f/8.6.5/share/x86_64-osx-ghc-8.6.5/SNEEql-project-0.1.0.0"
libexecdir = "/Users/jawadyamine/Google Drive/polimi/3rd semester/principles of programming languages /Project/SNEEql-project/.stack-work/install/x86_64-osx/83c5d0c0b05d8f201326167373f38eadf5d9bb9273b17c9f8c0efba42995dc0f/8.6.5/libexec/x86_64-osx-ghc-8.6.5/SNEEql-project-0.1.0.0"
sysconfdir = "/Users/jawadyamine/Google Drive/polimi/3rd semester/principles of programming languages /Project/SNEEql-project/.stack-work/install/x86_64-osx/83c5d0c0b05d8f201326167373f38eadf5d9bb9273b17c9f8c0efba42995dc0f/8.6.5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "SNEEql_project_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "SNEEql_project_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "SNEEql_project_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "SNEEql_project_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "SNEEql_project_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "SNEEql_project_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
