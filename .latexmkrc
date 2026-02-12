#!/usr/bin/env perl

$latex      = 'uplatex -synctex=1 -file-line-error -halt-on-error -interaction=nonstopmode %O %S';
$dvipdf     = 'dvipdfmx %O -o %D %S';
$pdf_mode   = 3;

$bibtex     = 'upbibtex %O %S';
$bibtex_use = 2;

$do_cd      = 1;
