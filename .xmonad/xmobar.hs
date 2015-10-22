-- xmobar config used by Andrew Seidl, inspired by Vic Fryzel
-- Author: Vic Fryzel
-- Modified by: Andrew Seidl <fersla>
-- http://github.com/fersla/xmonad-config
-- https://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors
Config {
    font = "xft:Inconsolata for Powerline:regular:size=12",
    bgColor = "#002b36",
    fgColor = "#657b83",
--    position = Static { xpos = 0, ypos = 0, width = 2560, height = 10 },
    position = TopW C 100,
    lowerOnStart = True,
    commands = [
        Run Weather "KMSN" ["-t"," <tempC>C","-L","64","-H","77","--normal","#657b83","--high","#657b83","--low","#657b83"] 3600,
        Run MultiCpu ["-t","Cpu: <autototal>","-L","30","-H","60","-h","#657b83","-l","#657b83","-n","#657b83","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#657b83","-l","#657b83","-n","#657b83"] 10,
        Run Network "wlp6s0" ["-t","Wireless: <tx> <rx>","-H","200","-L","10","-h","#657b83","-l","#657b83","-n","#657b83"] 10,
        Run Network "enp0s20u2u1" ["-t","Wired: <tx> <rx>","-H","200","-L","10","-h","#657b83","-l","#657b83","-n","#657b83"] 10,
        Run Date "%a %b %_d %l:%M:%S" "date" 1,
        Run Com "/usr/bin/xmonad.get.volume" [] "myvolume" 1,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ Volume: <fc=#93a1a1>%myvolume%</fc> %multicpu%   %memory%  <fc=#93a1a1>%date%</fc>   %KMSN%"
}
