#!/bin/bash
# Functions and parameters

rc_var () 
{

   if [ -z "$1" ]                           # Is parameter #1 zero length?
      then
          echo "-Parameter #1 is zero length.-"  # Or no parameter passed.
      else
          echo "-Parameter #1 is \"$1\".-"
      fi

	variable=${1-$DEFAULT}                   #  What does
	echo "variable = $variable"              #+ parameter substitution show?
                                             #  ---------------------------
                                           #  It distinguishes between
                                             #+ no param and a null param.

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
