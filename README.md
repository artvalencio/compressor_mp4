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
3) Agora, basta colocar o arquivo "compressor_video.bat" ou o "compressor_video_crf40.bat" deste repositório na pasta que contém os vídeos que deseja compactar. Abra o arquivo (clique duas vezes) para rodar. Os resultados estarão armazenados na subpasta "compactados".

## Fator de compressão

Para a rotina padrão "compressor_video.bat" escolhemos um fator de compressão CRF=28, que produz uma compressão de até 90% sem perdas visíveis de qualidade.

Para a rotina "compressor_video_crf40.bat", como o nome indica, escolhemos um fator de compressão CRF=40. Há perdas de qualidade de imagem, mas a compressão é de até 98%. Significa dizer que um vídeo pesado de 1GB passa a ter aproximadamente 20Mb, o equivalente em espaço de armazenamento a apenas 10 fotos de celular.

O fator CRF é um número entre 0 e 51, sendo 0 sem perdas, 23 compressão padrão e 51 a máxima compressão (pior qualidade).

Caso deseje outro valor de CRF modifique o número na linha 46 do código "compressor_video.bat"
