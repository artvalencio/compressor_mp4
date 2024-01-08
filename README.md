# Compressor de vídeos MP4

(C) CPAPI, 2024

Autor: Arthur Valencio

## O que é

Uma rotina simplificada para compressão de vídeos

## Instalação:

1) FFMPEG precisa estar previamente instalado. Pode ser baixado gratuitamente em: https://ffmpeg.org/
2) Então, o ffmpeg precisa estar no PATH do Windows. Caso o programa tenha sido instalado em "C:\ffmpeg" (padrão), procure pelo prompt de comando, clique com o botão direito e selecione "abrir como administrador". Por fim, digite:
  ```
  setx /m PATH "C:\ffmpeg\bin;%PATH%"
  ```
3) Agora, basta colocar o arquivo "compressor_video.bat" deste repositório na pasta que contém os vídeos que deseja compactar. Abra o "compressor_video.bat" para rodar. Os resultados estarão armazenados na subpasta "compactados".

## Fator de compressão

Para esta rotina escolhemos um fator de compressão CRF=28, que é bem compactado.

O fator CRF é um número entre 0 e 51, sendo 0 sem perdas, 23 compressão padrão e 51 a máxima compressão (pior qualidade).

Caso deseje outro valor de CRF modifique o número na linha 46 do código "compressor_video.bat"
