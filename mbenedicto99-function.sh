#!/bin/bash

	# Finalidade	: Demonstrar function
	# Input		: $0
	# Autor		: Marcos de Benedicto
	# Data		: 11/08/2017

rc_var () 
{

	if [ -z "$1" ]
	then
		echo "-Parameter #1 is zero length.-"
	else
		echo "-Parameter #1 is \"$1\".-"
	fi

	variable=${1-$DEFAULT}
	echo "variable = $variable"

  	if [ "$2" ]
     	then
       		echo "-Parameter #2 is \"$2\".-"
   	fi

      return 0
 }

	rc_var                        # Called with zero-length param
	rc_var "\$uninitialized_param"   # Called with uninitialized param
	rc_var first           # Called with one param
	rc_var first second    # Called with two params
	rc_var "" second       # Called with zero-length first parameter
