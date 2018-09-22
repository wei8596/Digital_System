<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="x1" />
        <signal name="y1" />
        <signal name="z1" />
        <signal name="XLXN_4" />
        <signal name="F1" />
        <signal name="y2" />
        <signal name="z2" />
        <signal name="x2" />
        <signal name="XLXN_9" />
        <signal name="F2" />
        <signal name="x3" />
        <signal name="y3" />
        <signal name="z3" />
        <signal name="F3" />
        <port polarity="Input" name="x1" />
        <port polarity="Input" name="y1" />
        <port polarity="Input" name="z1" />
        <port polarity="Output" name="F1" />
        <port polarity="Input" name="y2" />
        <port polarity="Input" name="z2" />
        <port polarity="Input" name="x2" />
        <port polarity="Output" name="F2" />
        <port polarity="Input" name="x3" />
        <port polarity="Input" name="y3" />
        <port polarity="Input" name="z3" />
        <port polarity="Output" name="F3" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="xor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="208" y1="-128" y2="-128" x1="256" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="64" ey="-176" sx="64" sy="-80" r="56" cx="32" cy="-128" />
            <arc ex="128" ey="-176" sx="208" sy="-128" r="88" cx="132" cy="-88" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="64" y1="-80" y2="-80" x1="128" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <arc ex="208" ey="-128" sx="128" sy="-80" r="88" cx="132" cy="-168" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="y1" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_3">
            <blockpin signalname="z1" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="F1" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_4">
            <blockpin signalname="z2" name="I0" />
            <blockpin signalname="y2" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="x2" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="F2" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_8">
            <blockpin signalname="z3" name="I0" />
            <blockpin signalname="y3" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="F3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="256" y="256" name="XLXI_2" orien="R0" />
        <branch name="x1">
            <wire x2="256" y1="128" y2="128" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="128" name="x1" orien="R180" />
        <branch name="y1">
            <wire x2="256" y1="192" y2="192" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="192" name="y1" orien="R180" />
        <instance x="576" y="384" name="XLXI_3" orien="R0" />
        <branch name="z1">
            <wire x2="576" y1="320" y2="320" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="320" name="z1" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="544" y1="160" y2="160" x1="512" />
            <wire x2="544" y1="160" y2="256" x1="544" />
            <wire x2="576" y1="256" y2="256" x1="544" />
        </branch>
        <branch name="F1">
            <wire x2="864" y1="288" y2="288" x1="832" />
        </branch>
        <iomarker fontsize="28" x="864" y="288" name="F1" orien="R0" />
        <instance x="256" y="528" name="XLXI_4" orien="R0" />
        <branch name="y2">
            <wire x2="256" y1="400" y2="400" x1="224" />
        </branch>
        <branch name="z2">
            <wire x2="256" y1="464" y2="464" x1="224" />
        </branch>
        <instance x="576" y="656" name="XLXI_5" orien="R0" />
        <branch name="x2">
            <wire x2="576" y1="592" y2="592" x1="320" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="544" y1="432" y2="432" x1="512" />
            <wire x2="544" y1="432" y2="528" x1="544" />
            <wire x2="576" y1="528" y2="528" x1="544" />
        </branch>
        <branch name="F2">
            <wire x2="864" y1="560" y2="560" x1="832" />
        </branch>
        <iomarker fontsize="28" x="224" y="400" name="y2" orien="R180" />
        <iomarker fontsize="28" x="224" y="464" name="z2" orien="R180" />
        <iomarker fontsize="28" x="320" y="592" name="x2" orien="R180" />
        <iomarker fontsize="28" x="864" y="560" name="F2" orien="R0" />
        <instance x="304" y="896" name="XLXI_8" orien="R0" />
        <branch name="x3">
            <wire x2="304" y1="704" y2="704" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="704" name="x3" orien="R180" />
        <branch name="y3">
            <wire x2="304" y1="768" y2="768" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="768" name="y3" orien="R180" />
        <branch name="z3">
            <wire x2="304" y1="832" y2="832" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="832" name="z3" orien="R180" />
        <branch name="F3">
            <wire x2="592" y1="768" y2="768" x1="560" />
        </branch>
        <iomarker fontsize="28" x="592" y="768" name="F3" orien="R0" />
    </sheet>
</drawing>