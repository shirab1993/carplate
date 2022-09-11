%CREATE TEMPLATES

%Number
zero=imread('numbers/zero.bmp');
zerof=imread('numbers/zerof.bmp');
one=imread('numbers/one.bmp'); 
two=imread('numbers/two.bmp');
three=imread('numbers/three.bmp');
four=imread('numbers/four.bmp');
fourf=imread('numbers/fourf.bmp');
five=imread('numbers/five.bmp'); 
six=imread('numbers/six.bmp');
sixf=imread('numbers/sixf.bmp');
seven=imread('numbers/seven.bmp');
eight=imread('numbers/eight.bmp');
eightf=imread('numbers/eightf.bmp');
nine=imread('numbers/nine.bmp');
ninef=imread('numbers/ninef.bmp');
nineff=imread('numbers/nineff.bmp');

number=[zero zerof one two three four fourf five six sixf seven eight eightf nine ninef nineff];

NewTemplates=mat2cell(number,42,[24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24]);

save ('NewTemplates','NewTemplates')
clear all;