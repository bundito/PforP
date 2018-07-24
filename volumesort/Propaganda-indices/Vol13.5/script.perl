#!/usr/bin/perl
#
# usage: mkbrowse <list of images>
#
# creates an indexed browsable thingy with links to tiled pages
#

@files = @ARGV;


for ($x = 0; $x < $#files + 1; $x++) {
        print STDOUT $files[$x], ".html\n";
        open(F, ">" . $files[$x] . ".html") || die("$!");
        select(F);

        if ($x > 0) {
                $prev_file = $files[$x - 1] . ".html";
                $prev = "<A HREF=../Vol4/catalog.html>&lt; &lt; PREVIOUS VOLUME</A>";
        } else {
                $prev = "<FONT COLOR=#808080>&lt; &lt; PREVIOUS VOLUME</FONT>";
        }

        if ($x < $#files) {
                $next_file = $files[$x + 1] . ".html";
                $next = "<A HREF=../Vol6/catalog.html>NEXT VOLUME &gt; &gt;</A>";
        } else {
                $next = "<FONT COLOR=#808080>NEXT VOLUME &gt; &gt;</FONT>";
        }

        print <<EOM
<HTML>
<HEAD><TITLE>Propaganda: $files[$x]</TITLE></HEAD>

<BODY BGCOLOR="#B28E1C" TEXT="#000000" LINK="#222200" VLINK="#926E00">
<TABLE BORDER=0 WIDTH=100% CELLPADDING=0 CELLSPACING=0>
<TR>
  <TD ALIGN=LEFT WIDTH=25%>$prev</TD>
  <TD ALIGN=CENTER WIDTH=50%><FONT SIZE=+1
FACE="helvetica,arial">Volume 13.5: THE DEBIAN SPECIAL<br><FONT SIZE=+2>$files[$x]<br><FONT SIZE=0></FONT></TD>
  <TD ALIGN=RIGHT WIDTH=25%>$next</TD>
</TR>
</TABLE>

<P><TABLE BORDER=0 CELLPADDING=8 CELLSPACING=4>
<TR>
<TD VALIGN=TOP BGCOLOR="#B28E1C"><FONT FACE=HELVETICA,ARIAL SIZE=3>
EOM
        ;
        
        foreach $pic (@files) {
                print "<A HREF=$pic.html>$pic</A>";
                if ($pic eq $files[$x]) {
         print "<B><BLINK>&lt;</BLINK>&lt;</B>";
                }
                print "<BR>\n";
        }

print <<EOM
</TD><TD VALIGN=TOP WIDTH=100% BGCOLOR="#000000" BACKGROUND=$files[$x]>
<A HREF="$files[$x].tile.html"><b><font color="#cccccc" size=-1>Full-Screen</font></b> 
</A>
</TD></TABLE>

<P>
<TABLE BORDER=0 WIDTH=100% CELLPADDING=0 CELLSPACING=0>
<TR>
  <TD ALIGN=LEFT WIDTH=33%><A HREF=$prev_file>PREVIOUS IMAGE</A></TD>
 <TD ALIGN=CENTER WIDTH=33%><A HREF="$files[$x]"><b>DOWNLOAD THIS IMAGE</b></A></TD>  
<TD ALIGN=RIGHT WIDTH=33%><A HREF=$next_file>NEXT IMAGE</A></TD>
</TR>
</TABLE>
<HR NOSHADE SIZE=1>
<FONT SIZE=-2>This image is Copyleft &copy; 1998,1999 2000 Bowie J. Poag, Naru Sundar / PROPAGANDA  
 See the file <A HREF="COPYING">COPYING</A> 
        for details. Tile browser provided by Zachary Beane 
</BODY>
</HTML>
EOM
        ;
        close(F);
        open(T, ">" . $files[$x] . ".tile.html") || die("$!");
        print T <<EOM
<HEAD><TITLE>Propaganda: Tile Example</TITLE></HEAD>
<BODY BACKGROUND=$files[$x]>
<TABLE BORDER=0 BGCOLOR="#FFFFFF" CELLPADDING=5 CELLSPACING=0>
<TR><TD><FONT SIZE=-1 FACE="helvetica,arial"><A
HREF="$files[$x].html">Purty, Aint it! Click here to go back..</A></FONT></TD></TR></TABLE>
EOM
        ;
        close(T);
}


