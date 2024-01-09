::=========================================================
:: This program compresses mp4 videos in the current folder
:: The compressed files are stored in compressed subfolder
:: Requirements: FFMPEG
:: (C) CPAPI, 2024
:: Author: Arthur Valencio
::=========================================================

:: Preamble
@echo off
title Compressor de videos MP4
echo Compressor de videos MP4
echo (Requer FFMPEG instalado)
echo (C) CPAPI, 2024
echo Autor: Arthur Valencio
echo(
echo ===================================
echo Bem vindo ao compressor de videos mp4
echo Este programa ira compactar videos na pasta atual
echo Os arquivos compactados serao salvos na subpasta "compactados"
echo ===================================
echo(

:: List of files to be compressed 
echo ===================================
echo Serao compactados os seguintes arquivos:
for %%f in (*.mp4) do (
    if "%%~xf"==".mp4" echo %%f
)
echo ===================================
echo(
pause

:: Create output folder "compactados" if required
if not exist compactados\NUL mkdir compactados


:: File compression
setlocal EnableDelayedExpansion
for %%f in (*.mp4) do (
    if "%%~xf"==".mp4" (
	set newname=compactados/compac_%%f
	echo Compactando o arquivo %%f
	rem For compression I'm setting CRF=28, which is very compressed
	rem CRF (constant rate factor) is a number 0-51 where 
	rem 0 is lossless, 23 is default and 51 is worst possible quality
	ffmpeg -i %%f -vcodec libx265 -crf 28 !newname!
	echo Pronto!
	echo(
    )
)
setlocal disabledelayedexpansion

:: Message that everything is done and close the program
echo(
echo ===================================
echo Todos os arquivos foram compactados
echo Verifique se eles abrem corretamente antes de fazer upload
echo ===================================
echo(
pause