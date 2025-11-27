#!/bin/bash

# Contoh sederhana
umur=20

if [ $umur -lt 18 ]; then
    echo "Anda masih di bawah umur"
elif [ $umur -ge 18 ] && [ $umur -lt 60 ]; then
    echo "Anda dewasa"
else
    echo "Anda senior"
fi
