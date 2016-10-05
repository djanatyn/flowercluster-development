import XMonad
import System.IO
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)

main :: IO ()
main = do
  xmproc <- spawnPipe "xmobar -d -o"
  xmonad $ defaultConfig
    { manageHook = manageDocks <+> manageHook defaultConfig
    , layoutHook = avoidStruts $ layoutHook defaultConfig
    , borderWidth = 1
    , terminal = "st"
    , normalBorderColor = "#053569"
    , focusedBorderColor = "#0954B5"
    , focusFollowsMouse = False } `additionalKeys`
    [ ((mod1Mask, xK_l), spawn "xlock -mode mountain") ]
