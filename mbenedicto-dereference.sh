#!/bin/bash

	# Finalidade	: Retirar referencia de uma variavel
	# Input		: $0 <frase>
	# Autor		: Marcos de Benedicto
	# Data		: 8/12/2003

dereference ()
{
	y=\$"$1"   # Name of variable (not value!).
	echo $y    # $Junk

	x=`eval "expr \"$y\" "`
	echo $1=$x
	eval "$1=\"Some Different Text \""  # Assign new value.
}

Junk="Some Text"
echo $Junk "before"    # Some Text before

dereference Junk
echo $Junk "after"     # Some Different Text after
