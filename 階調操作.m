% 課題２　階調数と疑似輪郭 
% ２階調，４階調，８階調の画像を生成せよ． 
% 下記はサンプルプログラムである． 
% 課題作成にあたっては「Lenna」以外の画像を用いよ． 
 
 
clear; % 変数のオールクリア 
 
ORG=imread('Chrysanthemum.jpg'); % 原画像の入力 
ORG = rgb2gray(ORG); 
colormap(gray); 
colorbar; 
imagesc(ORG); 
axis image; 
% 画像の表示 
pause; % 一時停止 
 
% ２階調画像の生成 
IMG = ORG>128; 
imagesc(IMG); 
colormap(gray); 
colorbar;  
axis image; 
pause; 
 
% ４階調画像の生成 
IMG0 = ORG>64; 
IMG1 = ORG>128; 
IMG2 = ORG>192; 
IMG = IMG0 + IMG1 + IMG2; 
imagesc(IMG); 
colormap(gray); 
colorbar;  
axis image; 
pause; 
 
% ８階調については，各自検討してください． 
IMG0 = ORG>(255/8)*1; 
IMG1 = ORG>(255/8)*2; 
IMG2 = ORG>(255/8)*3; 
IMG3 = ORG>(255/8)*4;
IMG4 = ORG>(255/8)*5; 
IMG5 = ORG>(255/8)*6; 
IMG6 = ORG>(255/8)*7; 
IMG7 = ORG>(255/8)*8;
IMG = IMG0 + IMG1 + IMG2+IMG3+IMG4 + IMG5 + IMG6+IMG7; 
imagesc(IMG); 
colormap(gray); 
colorbar;  
axis image;
