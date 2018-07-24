#!/usr/bin/perl
#
# usage: mkbrowse <prev vol dir> <desc> <next vol dir> <list of images>
#
# creates an indexed browsable thingy with links to tiled pages
#

$prevvol = $ARGV[0] ; shift;
$thisvol = $ARGV[0] ; shift;
$nextvol = $ARGV[0] ; shift;

@files = @ARGV;


unlink "index.html";
symlink $files[0].".html", "index.html";

for ($x = 0; $x < $#files + 1; $x++) {
        #print STDOUT $files[$x], ".html\n";
        open(F, ">" . $files[$x] . ".html") || die("$!");
        select(F);

        if ($x > 0) {
                $prev_file = $files[$x - 1] . ".html";
		$prev_file_link = "<A HREF=$prev_file>&lt; &lt; PREVIOUS FILE</A>";
	} 
        
        $prev = "<A HREF=../$prevvol>&lt; &lt; PREVIOUS VOLUME</A>";

        if ($x < $#files) {
        	$next_file = $files[$x + 1] . ".html"; 
		$next_file_link = "<A HREF=$next_file>NEXT FILE &gt; &gt;</A>";
	} else { $next_file="" ; $next_file_link="";}
	
        $next = "<A HREF=../$nextvol>NEXT VOLUME &gt; &gt;</A>";

        print <<EOM
<HTML>
<HEAD><TITLE>Propaganda: $files[$x]</TITLE></HEAD>

<BODY BGCOLOR="#B28E1C" TEXT="#000000" LINK="#222200" VLINK="#926E00">
<TABLE BORDER=0 WIDTH=100% CELLPADDING=0 CELLSPACING=0>
<TR>
  <TD ALIGN=LEFT WIDTH=33%>$prev</TD>
  <TD rowspan=2 ALIGN=CENTER WIDTH=33%><FONT SIZE=+2
FACE="Comic Sans MS, helvetica, Arial">$thisvol</FONT></TD>
  <TD ALIGN=RIGHT WIDTH=33%>$next</TD>
</TR>
<TR>
  <TD ALIGN=LEFT WIDTH=33%>$prev_file_link</TD>
  <TD ALIGN=RIGHT WIDTH=33%>$next_file_link</TD>
</TR>
</TABLE>

<P><TABLE BORDER=0 CELLPADDING=8 CELLSPACING=4>

<TR>
<TD VALIGN=TOP BGCOLOR="#B28E1C"><FONT FACE="Comic Sans MS, helvetica, Arial" SIZE=3>
<nobr>
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
</nobr>
</TD><TD VALIGN=TOP WIDTH=100% BGCOLOR="#000000" BACKGROUND="$files[$x]">
<TABLE BORDER=0 BGCOLOR="#FFFFFF" CELLPADDING=5 CELLSPACING=0>
<TR><TD><FONT SIZE=-1 FACE="helvetica,arial">
<A HREF="$files[$x].tile.html">Full Screen</A>
</TD></TR></TABLE>
</TD></TR></TABLE>

<P>
<TABLE BORDER=0 WIDTH=100% CELLPADDING=0 CELLSPACING=0>
<TR>
  <TD ALIGN=LEFT WIDTH=33%>$prev</TD>
  <TD ALIGN=CENTER WIDTH=33%>$files[$x]</TD>
  <TD ALIGN=RIGHT WIDTH=33%>$next</TD>
</TR>
</TABLE>
<HR NOSHADE SIZE=1>
<FONT SIZE=-2>This image is Copyleft &copy; 1998-2002 Bowie J. Poag / PROPAGANDA  
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
HREF="$files[$x].html">P'rty. ain' it? (Back)</A></FONT></TD></TR></TABLE>
EOM
        ;
        close(T);
}


