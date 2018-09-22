<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex5" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="x3" />
        <signal name="x0" />
        <signal name="y3" />
        <signal name="y2" />
        <signal name="y0" />
        <signal name="x1" />
        <signal name="y1" />
        <signal name="x2" />
        <port polarity="Input" name="x3" />
        <port polarity="Input" name="x0" />
        <port polarity="Output" name="y3" />
        <port polarity="Output" name="y2" />
        <port polarity="Output" name="y0" />
        <port polarity="Input" name="x1" />
        <port polarity="Output" name="y1" />
        <port polarity="Input" name="x2" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="and3" name="XLXI_1">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="y3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="x1" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="x2" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="x3" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="x2" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="y2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="x0" name="I" />
            <blockpin signalname="y0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="x1" name="I" />
            <blockpin signalname="y1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="640" y="592" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="640" y1="400" y2="400" x1="608" />
        </branch>
        <instance x="384" y="432" name="XLXI_2" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="640" y1="464" y2="464" x1="608" />
        </branch>
        <instance x="384" y="496" name="XLXI_3" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="640" y1="528" y2="528" x1="608" />
        </branch>
        <instance x="384" y="560" name="XLXI_4" orien="R0" />
        <instance x="656" y="896" name="XLXI_5" orien="R0" />
        <instance x="608" y="1392" name="XLXI_6" orien="R0" />
        <branch name="x3">
            <wire x2="384" y1="528" y2="528" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="528" name="x3" orien="R180" />
        <branch name="x0">
            <wire x2="608" y1="1360" y2="1360" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="1360" name="x0" orien="R180" />
        <branch name="y3">
            <wire x2="928" y1="464" y2="464" x1="896" />
        </branch>
        <iomarker fontsize="28" x="928" y="464" name="y3" orien="R0" />
        <branch name="y2">
            <wire x2="944" y1="800" y2="800" x1="912" />
        </branch>
        <iomarker fontsize="28" x="944" y="800" name="y2" orien="R0" />
        <branch name="y0">
            <wire x2="864" y1="1360" y2="1360" x1="832" />
        </branch>
        <iomarker fontsize="28" x="864" y="1360" name="y0" orien="R0" />
        <branch name="x1">
            <wire x2="192" y1="400" y2="400" x1="112" />
            <wire x2="288" y1="400" y2="400" x1="192" />
            <wire x2="384" y1="400" y2="400" x1="288" />
            <wire x2="192" y1="400" y2="624" x1="192" />
            <wire x2="304" y1="624" y2="624" x1="192" />
            <wire x2="304" y1="624" y2="768" x1="304" />
            <wire x2="304" y1="768" y2="1104" x1="304" />
            <wire x2="640" y1="1104" y2="1104" x1="304" />
            <wire x2="656" y1="768" y2="768" x1="304" />
        </branch>
        <iomarker fontsize="28" x="112" y="400" name="x1" orien="R180" />
        <instance x="640" y="1136" name="XLXI_7" orien="R0" />
        <branch name="y1">
            <wire x2="896" y1="1104" y2="1104" x1="864" />
        </branch>
        <iomarker fontsize="28" x="896" y="1104" name="y1" orien="R0" />
        <branch name="x2">
            <wire x2="304" y1="464" y2="464" x1="240" />
            <wire x2="312" y1="464" y2="464" x1="304" />
            <wire x2="384" y1="464" y2="464" x1="312" />
            <wire x2="304" y1="432" y2="432" x1="256" />
            <wire x2="304" y1="432" y2="464" x1="304" />
            <wire x2="256" y1="432" y2="832" x1="256" />
            <wire x2="656" y1="832" y2="832" x1="256" />
        </branch>
        <iomarker fontsize="28" x="240" y="464" name="x2" orien="R180" />
    </sheet>
</drawing>